kube-resource-report
====================
Report Kubernetes cluster and pod resource requests vs usage and generate static HTML

Current chart version is `0.2.2`

Source code can be found [here](https://github.com/hjacobs/kube-resource-report.git)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| addtionalCostPerCluster | int | `0` |  |
| affinity | object | `{}` |  |
| container.port | int | `80` |  |
| container.portName | string | `"http"` |  |
| container.portProtocol | string | `"TCP"` |  |
| customArgs | list | `[]` |  |
| env | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"hjacobs/kube-resource-report"` |  |
| image.tag | string | `"19.12.2"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| pricing.data | string | `"dc-1,master,30.000\ndc-1,worker,500.000\n"` |  |
| pricing.enabled | bool | `false` |  |
| rbac.create | bool | `true` |  |
| replicaCount | int | `1` |  |
| resourcesApp.limits.memory | string | `"100Mi"` |  |
| resourcesApp.requests.cpu | string | `"5m"` |  |
| resourcesApp.requests.memory | string | `"50Mi"` |  |
| resourcesNginx.limits.memory | string | `"50Mi"` |  |
| resourcesNginx.requests.cpu | string | `"5m"` |  |
| resourcesNginx.requests.memory | string | `"20Mi"` |  |
| service.port | int | `8080` |  |
| service.portName | string | `"http"` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| updateInterval | int | `1` |  |
