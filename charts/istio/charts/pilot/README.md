pilot
=====
Helm chart for pilot deployment

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| autoscaleEnabled | bool | `true` |  |
| autoscaleMax | int | `5` |  |
| autoscaleMin | int | `1` |  |
| cpu.targetAverageUtilization | int | `80` |  |
| enableProtocolSniffingForInbound | bool | `false` |  |
| enableProtocolSniffingForOutbound | bool | `true` |  |
| enabled | bool | `true` |  |
| env.GODEBUG | string | `"gctrace=1"` |  |
| env.PILOT_PUSH_THROTTLE | int | `100` |  |
| image | string | `"pilot"` |  |
| keepaliveMaxServerConnectionAge | string | `"30m"` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"2048Mi"` |  |
| rollingMaxSurge | string | `"100%"` |  |
| rollingMaxUnavailable | string | `"25%"` |  |
| sidecar | bool | `true` |  |
| tolerations | list | `[]` |  |
| traceSampling | float | `1` |  |
