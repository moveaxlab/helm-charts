mixer
=====
Helm chart for mixer deployment

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adapters.kubernetesenv.enabled | bool | `true` |  |
| adapters.prometheus.enabled | bool | `true` |  |
| adapters.prometheus.metricsExpiryDuration | string | `"10m"` |  |
| adapters.stdio.enabled | bool | `false` |  |
| adapters.stdio.outputAsJson | bool | `true` |  |
| adapters.useAdapterCRDs | bool | `false` |  |
| env.GODEBUG | string | `"gctrace=1"` |  |
| env.GOMAXPROCS | string | `"6"` |  |
| image | string | `"mixer"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| policy.autoscaleEnabled | bool | `true` |  |
| policy.autoscaleMax | int | `5` |  |
| policy.autoscaleMin | int | `1` |  |
| policy.cpu.targetAverageUtilization | int | `80` |  |
| policy.enabled | bool | `false` |  |
| policy.replicaCount | int | `1` |  |
| policy.rollingMaxSurge | string | `"100%"` |  |
| policy.rollingMaxUnavailable | string | `"25%"` |  |
| telemetry.autoscaleEnabled | bool | `true` |  |
| telemetry.autoscaleMax | int | `5` |  |
| telemetry.autoscaleMin | int | `1` |  |
| telemetry.cpu.targetAverageUtilization | int | `80` |  |
| telemetry.enabled | bool | `true` |  |
| telemetry.loadshedding.latencyThreshold | string | `"100ms"` |  |
| telemetry.loadshedding.mode | string | `"enforce"` |  |
| telemetry.replicaCount | int | `1` |  |
| telemetry.reportBatchMaxEntries | int | `100` |  |
| telemetry.reportBatchMaxTime | string | `"1s"` |  |
| telemetry.resources.limits.cpu | string | `"4800m"` |  |
| telemetry.resources.limits.memory | string | `"4G"` |  |
| telemetry.resources.requests.cpu | string | `"1000m"` |  |
| telemetry.resources.requests.memory | string | `"1G"` |  |
| telemetry.rollingMaxSurge | string | `"100%"` |  |
| telemetry.rollingMaxUnavailable | string | `"25%"` |  |
| telemetry.sessionAffinityEnabled | bool | `false` |  |
| tolerations | list | `[]` |  |
