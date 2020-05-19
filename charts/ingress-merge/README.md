ingress-merge
=============
Merge Ingress Controller combines multiple ingress resorces into a new one.

Current chart version is `0.1-alpha4`

Source code can be found [here](https://github.com/jakubkulhan/ingress-merge)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| configMapSelector | string | `"merge.ingress.kubernetes.io=owned"` |  |
| configMapWatchIgnore | list | `[]` |  |
| configNamespace | string | `"istio-system"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"jakubkulhan/ingress-merge"` |  |
| image.tag | string | `"latest"` |  |
| ingressClass | string | `"merge"` |  |
| ingressSelector | string | `""` |  |
| ingressWatchIgnore | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| rbac.create | bool | `true` |  |
| rbac.serviceAccountName | string | `"default"` |  |
| resources.limits.cpu | string | `"400m"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| tolerations | list | `[]` |  |
| àconf | string | `nil` |  |
