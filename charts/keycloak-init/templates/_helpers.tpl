{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "keycloak-init.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "keycloak-init.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "keycloak-init.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "keycloak-init.labels" -}}
app.kubernetes.io/name: {{ include "keycloak-init.name" . }}
helm.sh/chart: {{ include "keycloak-init.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "keycloak-init.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "keycloak-init.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}


{{- define "helm-toolkit.utils.joinListWithComma" -}}
{{- $local := dict "first" true -}}
{{- range $k, $v := . -}}{{- if not $local.first -}},{{- end -}}{{- $v -}}{{- $_ := set $local "first" false -}}{{- end -}}
{{- end -}}

{{- define "listWithComma" -}}
{{- $zkservers := list -}}
{{- range int . | until -}}
{{- $zkservers = print "zk-" . ".zookeeper" | append $zkservers -}}
{{- end -}}
{{- join "," $zkservers -}}
{{- end -}}


{{- define "importClientSecret" -}}
#!/bin/bash
set -e

if [[ -z $NAMESPACES ]]; then
    echo "ERROR: No namespace defined, aborting..."
    exit 1
fi
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
password=$KEYCLOAK_PASSWORD

/opt/jboss/keycloak/bin/kcadm.sh config credentials --server $KEYCLOAK_HOST --realm master --user $KEYCLOAK_USER --password $password
echo "Logged in."

clientId=$(/opt/jboss/keycloak/bin/kcadm.sh get clients --server $KEYCLOAK_HOST --realm master | grep -w "{{ .Values.oidcSecret.clientId }}" -B 1 | grep id | cut -d '"' -f 4 | tr -d '\n')
clientSecret=$(/opt/jboss/keycloak/bin/kcadm.sh get clients/$clientId/client-secret --server $KEYCLOAK_HOST --realm master | grep value | cut -d '"' -f 4 | tr -d '\n')
echo $clientId
echo $clientSecret
echo $NAMESPACES
delimiter=","
declare -a namespaces=($(echo $NAMESPACES | tr "$delimiter" " "))
for namespace in "${namespaces[@]}"; do  
    echo "Setting secret for $namespace"
   (kubectl create secret -n "$namespace" generic oidc-client-secret --from-literal=CLIENT_ID="{{ .Values.oidcSecret.clientId }}" --from-literal=CLIENT_SECRET="$clientSecret" ) || (kubectl delete -n "$namespace" secret/oidc-client-secret  && kubectl create secret -n "$namespace" generic oidc-client-secret --from-literal=CLIENT_ID="{{ .Values.oidcSecret.clientId }}" --from-literal=CLIENT_SECRET="$clientSecret")
done
{{- end -}}