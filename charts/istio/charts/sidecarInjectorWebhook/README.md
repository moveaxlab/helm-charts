sidecarInjectorWebhook
======================
Helm chart for sidecar injector webhook deployment

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alwaysInjectSelector | list | `[]` |  |
| enableNamespacesByDefault | bool | `false` |  |
| enabled | bool | `true` |  |
| image | string | `"sidecar_injector"` |  |
| neverInjectSelector | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| rewriteAppHTTPProbe | bool | `false` |  |
| rollingMaxSurge | string | `"100%"` |  |
| rollingMaxUnavailable | string | `"25%"` |  |
| tolerations | list | `[]` |  |
