nodeagent
=========
Helm chart for nodeagent deployment

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| enabled | bool | `false` |  |
| env.CA_ADDR | string | `""` |  |
| env.CA_PROVIDER | string | `""` |  |
| env.PLUGINS | string | `""` |  |
| image | string | `"node-agent-k8s"` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| tolerations | list | `[]` |  |
