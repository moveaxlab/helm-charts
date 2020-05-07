sonarqube
=========
Sonarqube is an open sourced code quality scanning tool

Current chart version is `2.2.3`

Source code can be found [here](https://www.sonarqube.org/)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kubernetes-charts.storage.googleapis.com/ | mysql | 0.6.0 |
| https://kubernetes-charts.storage.googleapis.com/ | postgresql | 0.8.3 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| annotations | object | `{}` |  |
| customCerts.enabled | bool | `false` |  |
| customCerts.secretName | string | `"my-cacerts"` |  |
| database.type | string | `"postgresql"` |  |
| deploymentStrategy | object | `{}` |  |
| extraEnv | object | `{}` |  |
| hostAliases | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"sonarqube"` |  |
| image.tag | string | `"7.9.1-community"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/tags" | string | `"environment=dev"` |  |
| ingress.annotations."merge.ingress.kubernetes.io/config" | string | `"merge-ingress"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.namespace | string | `"istio-system"` |  |
| ingress.paths[0].path | string | `"/*"` |  |
| ingress.paths[0].serviceName | string | `"ssl-redirect"` |  |
| ingress.paths[0].servicePort | string | `"use-annotation"` |  |
| ingress.paths[1].path | string | `"/*"` |  |
| ingress.paths[1].serviceName | string | `"istio-ingressgateway"` |  |
| ingress.paths[1].servicePort | int | `80` |  |
| livenessProbe.initialDelaySeconds | int | `60` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.sonarWebContext | string | `"/"` |  |
| mysql.enabled | bool | `false` |  |
| mysql.mysqlDatabase | string | `"sonarDB"` |  |
| mysql.mysqlPassword | string | `"sonarPass"` |  |
| mysql.mysqlUser | string | `"sonarUser"` |  |
| mysql.service.port | int | `3306` |  |
| nodeSelector | object | `{}` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `false` |  |
| plugins.install[0] | string | `"https://binaries.sonarsource.com/Distribution/sonar-java-plugin/sonar-java-plugin-6.0.1.20589.jar"` |  |
| plugins.install[1] | string | `"https://binaries.sonarsource.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-6.1.0.11503.jar"` |  |
| plugins.install[2] | string | `"https://binaries.sonarsource.com/Distribution/sonar-typescript-plugin/sonar-typescript-plugin-2.1.0.4359.jar"` |  |
| plugins.install[3] | string | `"https://binaries.sonarsource.com/Distribution/sonar-python-plugin/sonar-python-plugin-2.3.0.5351.jar"` |  |
| plugins.resources | object | `{}` |  |
| podLabels | object | `{}` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.imagePullPolicy | string | `"IfNotPresent"` |  |
| postgresql.postgresDatabase | string | `"sonarDB"` |  |
| postgresql.postgresUser | string | `"sonar"` |  |
| postgresql.postgresqlPasswordSecret | string | `"sonarqube-postgres-secret"` |  |
| postgresql.service.port | int | `5432` |  |
| readinessProbe.failureThreshold | int | `6` |  |
| readinessProbe.initialDelaySeconds | int | `60` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.sonarWebContext | string | `"/"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.fsGroup | int | `999` |  |
| service.annotations | object | `{}` |  |
| service.externalPort | int | `9000` |  |
| service.hostname | string | `"sonar.dev.example.com"` |  |
| service.internalPort | int | `9000` |  |
| service.istioIngressName | string | `"ingressgateway"` |  |
| service.labels | string | `nil` |  |
| service.loadBalancerSourceRanges[0] | string | `"0.0.0.0/0"` |  |
| service.name | string | `"http-sonarqube"` |  |
| service.type | string | `"ClusterIP"` |  |
| sonarProperties."sonar.core.serverBaseURL" | string | `"https://sonar.dev.example.com"` |  |
| sonarSecretKey | bool | `false` |  |
| tolerations | list | `[]` |  |
