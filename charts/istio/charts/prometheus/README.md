prometheus
==========
A Helm chart for Kubernetes

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| contextPath | string | `"/prometheus"` |  |
| enabled | bool | `true` |  |
| hub | string | `"docker.io/prom"` |  |
| image | string | `"prometheus"` |  |
| ingress.annotations | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"prometheus.local"` |  |
| ingress.tls | string | `nil` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| retention | string | `"6h"` |  |
| scrapeInterval | string | `"15s"` |  |
| security.enabled | bool | `true` |  |
| service.annotations | object | `{}` |  |
| service.nodePort.enabled | bool | `false` |  |
| service.nodePort.port | int | `32090` |  |
| tag | string | `"v2.8.0"` |  |
| tolerations | list | `[]` |  |
