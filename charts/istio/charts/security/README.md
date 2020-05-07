security
========
Helm chart for istio authentication

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| citadelHealthCheck | bool | `false` |  |
| createMeshPolicy | bool | `true` |  |
| enableNamespacesByDefault | bool | `true` |  |
| enabled | bool | `true` |  |
| image | string | `"citadel"` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| rollingMaxSurge | string | `"100%"` |  |
| rollingMaxUnavailable | string | `"25%"` |  |
| selfSigned | bool | `true` |  |
| tolerations | list | `[]` |  |
| workloadCertTtl | string | `"2160h"` |  |
