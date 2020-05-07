tracing
=======
A Helm chart for Kubernetes

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| enabled | bool | `false` |  |
| ingress.annotations | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | string | `nil` |  |
| ingress.tls | string | `nil` |  |
| jaeger.accessMode | string | `"ReadWriteMany"` |  |
| jaeger.hub | string | `"docker.io/jaegertracing"` |  |
| jaeger.image | string | `"all-in-one"` |  |
| jaeger.memory.max_traces | int | `50000` |  |
| jaeger.persist | bool | `false` |  |
| jaeger.spanStorageType | string | `"badger"` |  |
| jaeger.storageClassName | string | `""` |  |
| jaeger.tag | float | `1.12` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| provider | string | `"jaeger"` |  |
| service.annotations | object | `{}` |  |
| service.externalPort | int | `9411` |  |
| service.name | string | `"http"` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| zipkin.hub | string | `"docker.io/openzipkin"` |  |
| zipkin.image | string | `"zipkin"` |  |
| zipkin.javaOptsHeap | int | `700` |  |
| zipkin.maxSpans | int | `500000` |  |
| zipkin.node.cpus | int | `2` |  |
| zipkin.probeStartupDelay | int | `200` |  |
| zipkin.queryPort | int | `9411` |  |
| zipkin.resources.limits.cpu | string | `"300m"` |  |
| zipkin.resources.limits.memory | string | `"900Mi"` |  |
| zipkin.resources.requests.cpu | string | `"150m"` |  |
| zipkin.resources.requests.memory | string | `"900Mi"` |  |
| zipkin.tag | string | `"2.14.2"` |  |
