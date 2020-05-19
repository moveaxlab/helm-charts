kafka-viz
=========
Kafka Vizualizer Helm chart for Kubernetes

Current chart version is `0.1.0`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| extraTemplateAnnotations."sidecar.istio.io/inject" | string | `"true"` |  |
| fullnameOverride | string | `""` |  |
| image.args[0] | string | `"kafka-zookeeper-headless:2181"` |  |
| image.args[1] | string | `"kafka-0.kafka-headless.:9092,kafka-1.kafka-headless.:9092"` |  |
| image.args[2] | string | `"DEV"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"kbhargava/kafka-visuals"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."alb.ingress.kubernetes.io/tags" | string | `"environment=dev"` |  |
| ingress.annotations."merge.ingress.kubernetes.io/config" | string | `"merge-ingress"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.namespace | string | `"istio-system"` |  |
| ingress.paths[0].path | string | `"/*"` |  |
| ingress.paths[0].serviceName | string | `"ssl-redirect"` |  |
| ingress.paths[0].servicePort | string | `"use-annotation"` |  |
| ingress.paths[1].path | string | `"/*"` |  |
| ingress.paths[1].serviceName | string | `"istio-ingressgateway"` |  |
| ingress.paths[1].servicePort | int | `80` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.hostname | string | `"kafkaviz.dev"` |  |
| service.istioIngressName | string | `"ingressgateway"` |  |
| service.name | string | `"http-kafkaviz"` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `nil` |  |
| tolerations | list | `[]` |  |
