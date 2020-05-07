kafdrop
=======
A Helm chart for Kafdrop

Current chart version is `0.1.1`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| host | string | `nil` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"obsidiandynamics/kafdrop"` |  |
| image.tag | string | `"latest"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[]` |  |
| ingress.path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| jmx.port | int | `8686` |  |
| jvm.opts | string | `""` |  |
| kafka.brokerConnect | string | `"kafka-headless:9092"` |  |
| kafka.keystore | string | `""` |  |
| kafka.keystoreFile | string | `"kafka.keystore.jks"` |  |
| kafka.properties | string | `""` |  |
| kafka.propertiesFile | string | `"kafka.properties"` |  |
| kafka.truststore | string | `""` |  |
| kafka.truststoreFile | string | `"kafka.truststore.jks"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations."sidecar.istio.io/inject" | string | `"false"` |  |
| replicaCount | int | `1` |  |
| resources.requests.cpu | string | `"300m"` |  |
| resources.requests.memory | string | `"1Gi"` |  |
| server.port | int | `9000` |  |
| server.servlet.contextPath | string | `"/"` |  |
| service.port | int | `9000` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
