certmanager
===========
A Helm chart for Kubernetes

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| enabled | bool | `false` |  |
| hub | string | `"quay.io/jetstack"` |  |
| image | string | `"cert-manager-controller"` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| tag | string | `"v0.6.2"` |  |
| tolerations | list | `[]` |  |
