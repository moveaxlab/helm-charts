kiali
=====
Kiali is an open source project for service mesh observability, refer to https://www.kiali.io for details.

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| contextPath | string | `"/kiali"` |  |
| createDemoSecret | bool | `false` |  |
| dashboard.auth.strategy | string | `"login"` |  |
| dashboard.grafanaURL | string | `nil` |  |
| dashboard.jaegerURL | string | `nil` |  |
| dashboard.secretName | string | `"kiali"` |  |
| dashboard.viewOnlyMode | bool | `false` |  |
| enabled | bool | `false` |  |
| hub | string | `"quay.io/kiali"` |  |
| image | string | `"kiali"` |  |
| ingress.annotations | string | `nil` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"kiali.local"` |  |
| ingress.tls | string | `nil` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| prometheusAddr | string | `"http://prometheus:9090"` |  |
| replicaCount | int | `1` |  |
| security.cert_file | string | `"/kiali-cert/cert-chain.pem"` |  |
| security.enabled | bool | `false` |  |
| security.private_key_file | string | `"/kiali-cert/key.pem"` |  |
| tag | string | `"v1.4"` |  |
| tolerations | list | `[]` |  |
