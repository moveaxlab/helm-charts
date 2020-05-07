kube-state-metrics
==================
Install kube-state-metrics to generate and expose cluster-level metrics

Current chart version is `2.6.4`

Source code can be found [here](https://github.com/kubernetes/kube-state-metrics/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| collectors.certificatesigningrequests | bool | `true` |  |
| collectors.configmaps | bool | `true` |  |
| collectors.cronjobs | bool | `true` |  |
| collectors.daemonsets | bool | `true` |  |
| collectors.deployments | bool | `true` |  |
| collectors.endpoints | bool | `true` |  |
| collectors.horizontalpodautoscalers | bool | `true` |  |
| collectors.ingresses | bool | `true` |  |
| collectors.jobs | bool | `true` |  |
| collectors.limitranges | bool | `true` |  |
| collectors.mutatingwebhookconfigurations | bool | `false` |  |
| collectors.namespaces | bool | `true` |  |
| collectors.networkpolicies | bool | `false` |  |
| collectors.nodes | bool | `true` |  |
| collectors.persistentvolumeclaims | bool | `true` |  |
| collectors.persistentvolumes | bool | `true` |  |
| collectors.poddisruptionbudgets | bool | `true` |  |
| collectors.pods | bool | `true` |  |
| collectors.replicasets | bool | `true` |  |
| collectors.replicationcontrollers | bool | `true` |  |
| collectors.resourcequotas | bool | `true` |  |
| collectors.secrets | bool | `true` |  |
| collectors.services | bool | `true` |  |
| collectors.statefulsets | bool | `true` |  |
| collectors.storageclasses | bool | `true` |  |
| collectors.validatingwebhookconfigurations | bool | `false` |  |
| collectors.verticalpodautoscalers | bool | `false` |  |
| collectors.volumeattachements | bool | `false` |  |
| customLabels | object | `{}` |  |
| hostNetwork | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/coreos/kube-state-metrics"` |  |
| image.tag | string | `"v1.9.4"` |  |
| namespaceOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityPolicy.annotations | object | `{}` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| prometheus.monitor.additionalLabels | object | `{}` |  |
| prometheus.monitor.enabled | bool | `false` |  |
| prometheus.monitor.honorLabels | bool | `false` |  |
| prometheus.monitor.namespace | string | `""` |  |
| prometheusScrape | bool | `true` |  |
| rbac.create | bool | `true` |  |
| replicas | int | `1` |  |
| securityContext.enabled | bool | `true` |  |
| securityContext.fsGroup | int | `65534` |  |
| securityContext.runAsUser | int | `65534` |  |
| service.annotations | object | `{}` |  |
| service.loadBalancerIP | string | `""` |  |
| service.nodePort | int | `0` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.imagePullSecrets | list | `[]` |  |
| serviceAccount.name | string | `nil` |  |
| tolerations | list | `[]` |  |
