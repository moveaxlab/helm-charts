istiocoredns
============
Istio CoreDNS provides DNS resolution for services in multicluster setups.

Current chart version is `1.3.3`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| coreDNSImage | string | `"coredns/coredns:1.1.2"` |  |
| coreDNSPluginImage | string | `"istio/coredns-plugin:0.2-istio-1.1"` |  |
| enabled | bool | `false` |  |
| nodeSelector | object | `{}` |  |
| podAntiAffinityLabelSelector | list | `[]` |  |
| podAntiAffinityTermLabelSelector | list | `[]` |  |
| replicaCount | int | `1` |  |
| rollingMaxSurge | string | `"100%"` |  |
| rollingMaxUnavailable | string | `"25%"` |  |
| tolerations | list | `[]` |  |
