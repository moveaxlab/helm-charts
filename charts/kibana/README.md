kibana
======
Official Elastic helm chart for Kibana

Current chart version is `7.3.0`

Source code can be found [here](https://github.com/elastic/helm-charts)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| antiAffinity | string | `"hard"` |  |
| antiAffinityTopologyKey | string | `"kubernetes.io/hostname"` |  |
| elasticsearchHosts | string | `"http://elasticsearch-master:9200"` |  |
| elasticsearchURL | string | `""` |  |
| extraEnvs | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| healthCheckPath | string | `"/app/kibana"` |  |
| httpPort | int | `5601` |  |
| image | string | `"docker.elastic.co/kibana/kibana"` |  |
| imagePullPolicy | string | `"IfNotPresent"` |  |
| imagePullSecrets | list | `[]` |  |
| imageTag | string | `"7.3.0"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/tags" | string | `"environment=stg"` |  |
| ingress.annotations."merge.ingress.kubernetes.io/config" | string | `"ops-ingress"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.namespace | string | `"istio-system"` |  |
| ingress.paths[0].path | string | `"/*"` |  |
| ingress.paths[0].serviceName | string | `"ssl-redirect"` |  |
| ingress.paths[0].servicePort | string | `"use-annotation"` |  |
| ingress.paths[1].path | string | `"/*"` |  |
| ingress.paths[1].serviceName | string | `"istio-ingressgateway"` |  |
| ingress.paths[1].servicePort | int | `80` |  |
| ingress.tls | list | `[]` |  |
| kibanaConfig | object | `{}` |  |
| labels | object | `{}` |  |
| maxUnavailable | int | `1` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| priorityClassName | string | `""` |  |
| protocol | string | `"http"` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `3` |  |
| readinessProbe.timeoutSeconds | int | `5` |  |
| replicas | int | `1` |  |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"500m"` |  |
| secretMounts | list | `[]` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| serverHost | string | `"0.0.0.0"` |  |
| service.annotations | object | `{}` |  |
| service.hostname | string | `"kibana.example.com"` |  |
| service.istioIngressName | string | `"ingressgateway"` |  |
| service.name | string | `"http-kibana"` |  |
| service.nodePort | string | `nil` |  |
| service.port | int | `5601` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount | string | `""` |  |
| tolerations | list | `[]` |  |
| updateStrategy.type | string | `"Recreate"` |  |
