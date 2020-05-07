prometheus-node-exporter
========================
A Helm chart for prometheus node-exporter

Current chart version is `1.9.0`

Source code can be found [here](https://github.com/prometheus/node_exporter/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| configmaps | list | `[]` |  |
| endpoints | list | `[]` |  |
| extraArgs | list | `[]` |  |
| extraHostVolumeMounts | list | `[]` |  |
| hostNetwork | bool | `true` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/prometheus/node-exporter"` |  |
| image.tag | string | `"v0.18.1"` |  |
| namespaceOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| prometheus.monitor.additionalLabels | object | `{}` |  |
| prometheus.monitor.enabled | bool | `false` |  |
| prometheus.monitor.namespace | string | `""` |  |
| prometheus.monitor.scrapeTimeout | string | `"10s"` |  |
| rbac.create | bool | `true` |  |
| rbac.pspEnabled | bool | `true` |  |
| resources | object | `{}` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `65534` |  |
| service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| service.nodePort | string | `nil` |  |
| service.port | int | `9100` |  |
| service.targetPort | int | `9100` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.imagePullSecrets | list | `[]` |  |
| serviceAccount.name | string | `nil` |  |
| sidecarVolumeMount | list | `[]` |  |
| sidecars | list | `[]` |  |
| tolerations[0].effect | string | `"NoSchedule"` |  |
| tolerations[0].operator | string | `"Exists"` |  |
| updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
