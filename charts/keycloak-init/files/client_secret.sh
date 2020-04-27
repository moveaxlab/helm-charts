#!/bin/bash
set -e

# if [[ -z $NAMESPACES ]]; then
#     echo "ERROR: No namespace defined, aborting..."
#     exit 1
# fi
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
password=$KEYCLOAK_PASSWORD

/opt/jboss/keycloak/bin/kcadm.sh config credentials --server "$KEYCLOAK_HOST" --realm master --user $KEYCLOAK_USER --password $password
echo "Logged in."

clientId=$(/opt/jboss/keycloak/bin/kcadm.sh get clients --server $KEYCLOAK_HOST --realm master | grep security-admin-console -C 2 | grep id | cut -d '"' -f 4 | tr -d '\n')
clientSecret=$(/opt/jboss/keycloak/bin/kcadm.sh get clients/$clientId/client-secret --server $KEYCLOAK_HOST --realm master | grep value | cut -d '"' -f 4 | tr -d '\n')
echo $clientId
echo $clientSecret
echo $NAMESPACES
delimiter=","
declare -a namespaces=($(echo $NAMESPACES | tr "$delimiter" " "))
for namespace in "${namespaces[@]}"; do  
    echo "Setting secret for $namespace"
    kubectl create secret -n "$namespace" generic oidc-client-secret --from-literal=CLIENT_ID="$clientId" --from-literal=CLIENT_SECRET="$clientSecret" || exit 0
done