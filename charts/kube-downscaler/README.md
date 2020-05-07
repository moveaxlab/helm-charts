kube-downscaler
===============
A Helm chart for kube-downscaler

Current chart version is `0.1.2`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| debug.enable | bool | `true` |  |
| image.args | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"hjacobs/kube-downscaler"` |  |
| image.tag | string | `"19.10.1"` |  |
| interval | int | `3600` |  |
| name | string | `"kube-downscaler"` |  |
| nodeAffinity.enabled | bool | `true` |  |
| nodeAffinity.required.nodeSelectorTerms[0].matchExpressions[0].key | string | `"env"` |  |
| nodeAffinity.required.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"NotIn"` |  |
| nodeAffinity.required.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"staging"` |  |
| rbac.create | bool | `true` |  |
| rbac.serviceAccountName | string | `"default"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"50m"` |  |
| resources.limits.memory | string | `"200Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"200Mi"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
