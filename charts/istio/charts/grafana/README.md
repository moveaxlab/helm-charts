grafana
=======
A Helm chart for Kubernetes

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| accessMode | string | `"ReadWriteMany"` |  |
| contextPath | string | `"/grafana"` |  |
| dashboardProviders."dashboardproviders.yaml".apiVersion | int | `1` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].disableDeletion | bool | `false` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].folder | string | `"istio"` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].name | string | `"istio"` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].options.path | string | `"/var/lib/grafana/dashboards/istio"` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].orgId | int | `1` |  |
| dashboardProviders."dashboardproviders.yaml".providers[0].type | string | `"file"` |  |
| datasources."datasources.yaml".apiVersion | int | `1` |  |
| datasources."datasources.yaml".datasources[0].access | string | `"proxy"` |  |
| datasources."datasources.yaml".datasources[0].editable | bool | `true` |  |
| datasources."datasources.yaml".datasources[0].isDefault | bool | `true` |  |
| datasources."datasources.yaml".datasources[0].jsonData.timeInterval | string | `"5s"` |  |
| datasources."datasources.yaml".datasources[0].name | string | `"Prometheus"` |  |
| datasources."datasources.yaml".datasources[0].orgId | int | `1` |  |
| datasources."datasources.yaml".datasources[0].type | string | `"prometheus"` |  |
| datasources."datasources.yaml".datasources[0].url | string | `"http://prometheus:9090"` |  |
| enabled | bool | `false` |  |
| env | object | `{}` |  |
| envSecrets | object | `{}` |  |
| image.repository | string | `"grafana/grafana"` |  |
| image.tag | string | `"6.1.6"` |  |
| ingress.annotations | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"grafana.local"` |  |
| ingress.tls | string | `nil` |  |
| nodeSelector | object | `{}` |  |
| persist | bool | `false` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| security.enabled | bool | `false` |  |
| security.passphraseKey | string | `"passphrase"` |  |
| security.secretName | string | `"grafana"` |  |
| security.usernameKey | string | `"username"` |  |
| service.annotations | object | `{}` |  |
| service.externalPort | int | `3000` |  |
| service.loadBalancerIP | string | `nil` |  |
| service.loadBalancerSourceRanges | string | `nil` |  |
| service.name | string | `"http"` |  |
| service.type | string | `"ClusterIP"` |  |
| storageClassName | string | `""` |  |
| tolerations | list | `[]` |  |
