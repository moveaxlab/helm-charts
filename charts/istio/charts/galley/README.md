galley
======
Helm chart for galley deployment

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| enabled | bool | `true` |  |
| image | string | `"galley"` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| rollingMaxSurge | string | `"100%"` |  |
| rollingMaxUnavailable | string | `"25%"` |  |
| tolerations | list | `[]` |  |
