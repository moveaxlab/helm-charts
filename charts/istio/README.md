istio
=====
Helm chart for all istio components

Current chart version is `1.3.3`



## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
|  | certmanager | 1.3.3 |
|  | galley | 1.3.3 |
|  | gateways | 1.3.3 |
|  | grafana | 1.3.3 |
|  | istiocoredns | 1.3.3 |
|  | kiali | 1.3.3 |
|  | mixer | 1.3.3 |
|  | nodeagent | 1.3.3 |
|  | pilot | 1.3.3 |
|  | prometheus | 1.3.3 |
|  | security | 1.3.3 |
|  | sidecarInjectorWebhook | 1.3.3 |
|  | tracing | 1.3.3 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| certmanager.enabled | bool | `false` |  |
| galley.enabled | bool | `true` |  |
| gateways.enabled | bool | `true` |  |
| global.arch.amd64 | int | `2` |  |
| global.arch.ppc64le | int | `2` |  |
| global.arch.s390x | int | `2` |  |
| global.configValidation | bool | `true` |  |
| global.controlPlaneSecurityEnabled | bool | `false` |  |
| global.defaultNodeSelector | object | `{}` |  |
| global.defaultPodDisruptionBudget.enabled | bool | `true` |  |
| global.defaultResources.requests.cpu | string | `"10m"` |  |
| global.defaultTolerations | list | `[]` |  |
| global.disablePolicyChecks | bool | `true` |  |
| global.enableHelmTest | bool | `false` |  |
| global.enableTracing | bool | `true` |  |
| global.hub | string | `"docker.io/istio"` |  |
| global.imagePullPolicy | string | `"IfNotPresent"` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.k8sIngress.enableHttps | bool | `false` |  |
| global.k8sIngress.enabled | bool | `false` |  |
| global.k8sIngress.gatewayName | string | `"ingressgateway"` |  |
| global.k8sIngressSelector | string | `"ingressgateway"` |  |
| global.localityLbSetting.enabled | bool | `true` |  |
| global.logging.level | string | `"default:info"` |  |
| global.meshExpansion.enabled | bool | `false` |  |
| global.meshExpansion.useILB | bool | `false` |  |
| global.meshID | string | `""` |  |
| global.meshNetworks | object | `{}` |  |
| global.monitoringPort | int | `15014` |  |
| global.mtls.enabled | bool | `false` |  |
| global.multiCluster.clusterName | string | `""` |  |
| global.multiCluster.enabled | bool | `false` |  |
| global.oneNamespace | bool | `false` |  |
| global.outboundTrafficPolicy.mode | string | `"ALLOW_ANY"` |  |
| global.policyCheckFailOpen | bool | `false` |  |
| global.priorityClassName | string | `""` |  |
| global.proxy.accessLogEncoding | string | `"TEXT"` |  |
| global.proxy.accessLogFile | string | `""` |  |
| global.proxy.accessLogFormat | string | `""` |  |
| global.proxy.autoInject | string | `"enabled"` |  |
| global.proxy.clusterDomain | string | `"cluster.local"` |  |
| global.proxy.componentLogLevel | string | `""` |  |
| global.proxy.concurrency | int | `2` |  |
| global.proxy.dnsRefreshRate | string | `"300s"` |  |
| global.proxy.enableCoreDump | bool | `false` |  |
| global.proxy.enableCoreDumpImage | string | `"ubuntu:xenial"` |  |
| global.proxy.envoyAccessLogService.enabled | bool | `false` |  |
| global.proxy.envoyAccessLogService.host | string | `nil` |  |
| global.proxy.envoyAccessLogService.port | string | `nil` |  |
| global.proxy.envoyAccessLogService.tcpKeepalive.interval | string | `"10s"` |  |
| global.proxy.envoyAccessLogService.tcpKeepalive.probes | int | `3` |  |
| global.proxy.envoyAccessLogService.tcpKeepalive.time | string | `"10s"` |  |
| global.proxy.envoyAccessLogService.tlsSettings.caCertificates | string | `nil` |  |
| global.proxy.envoyAccessLogService.tlsSettings.clientCertificate | string | `nil` |  |
| global.proxy.envoyAccessLogService.tlsSettings.mode | string | `"DISABLE"` |  |
| global.proxy.envoyAccessLogService.tlsSettings.privateKey | string | `nil` |  |
| global.proxy.envoyAccessLogService.tlsSettings.sni | string | `nil` |  |
| global.proxy.envoyAccessLogService.tlsSettings.subjectAltNames | list | `[]` |  |
| global.proxy.envoyMetricsService.enabled | bool | `false` |  |
| global.proxy.envoyMetricsService.host | string | `nil` |  |
| global.proxy.envoyMetricsService.port | string | `nil` |  |
| global.proxy.envoyStatsd.enabled | bool | `false` |  |
| global.proxy.envoyStatsd.host | string | `nil` |  |
| global.proxy.envoyStatsd.port | string | `nil` |  |
| global.proxy.excludeIPRanges | string | `""` |  |
| global.proxy.excludeInboundPorts | string | `""` |  |
| global.proxy.excludeOutboundPorts | string | `""` |  |
| global.proxy.image | string | `"proxyv2"` |  |
| global.proxy.includeIPRanges | string | `"*"` |  |
| global.proxy.includeInboundPorts | string | `"*"` |  |
| global.proxy.init.resources.limits.cpu | string | `"100m"` |  |
| global.proxy.init.resources.limits.memory | string | `"50Mi"` |  |
| global.proxy.init.resources.requests.cpu | string | `"10m"` |  |
| global.proxy.init.resources.requests.memory | string | `"10Mi"` |  |
| global.proxy.kubevirtInterfaces | string | `""` |  |
| global.proxy.logLevel | string | `""` |  |
| global.proxy.privileged | bool | `false` |  |
| global.proxy.protocolDetectionTimeout | string | `"100ms"` |  |
| global.proxy.readinessFailureThreshold | int | `30` |  |
| global.proxy.readinessInitialDelaySeconds | int | `1` |  |
| global.proxy.readinessPeriodSeconds | int | `2` |  |
| global.proxy.resources.limits.cpu | string | `"2000m"` |  |
| global.proxy.resources.limits.memory | string | `"1024Mi"` |  |
| global.proxy.resources.requests.cpu | string | `"100m"` |  |
| global.proxy.resources.requests.memory | string | `"128Mi"` |  |
| global.proxy.statusPort | int | `15020` |  |
| global.proxy.tracer | string | `"zipkin"` |  |
| global.proxy_init.image | string | `"proxy_init"` |  |
| global.sds.enabled | bool | `false` |  |
| global.sds.token.aud | string | `"istio-ca"` |  |
| global.sds.udsPath | string | `""` |  |
| global.tag | string | `"1.3.3"` |  |
| global.tracer.datadog.address | string | `"$(HOST_IP):8126"` |  |
| global.tracer.lightstep.accessToken | string | `""` |  |
| global.tracer.lightstep.address | string | `""` |  |
| global.tracer.lightstep.cacertPath | string | `""` |  |
| global.tracer.lightstep.secure | bool | `true` |  |
| global.tracer.zipkin.address | string | `""` |  |
| global.trustDomain | string | `""` |  |
| global.useMCP | bool | `true` |  |
| grafana.enabled | bool | `false` |  |
| istio-ingressgateway.type | string | `"NodePort"` |  |
| istio_cni.enabled | bool | `false` |  |
| istiocoredns.enabled | bool | `false` |  |
| kiali.enabled | bool | `true` |  |
| mixer.policy.enabled | bool | `true` |  |
| mixer.telemetry.enabled | bool | `true` |  |
| namespace | string | `"istio-system"` |  |
| nodeagent.enabled | bool | `false` |  |
| pilot.enabled | bool | `true` |  |
| prometheus.enabled | bool | `false` |  |
| security.enabled | bool | `true` |  |
| sidecarInjectorWebhook.enabled | bool | `true` |  |
| tracing.enabled | bool | `true` |  |
| tracing.provider | string | `"zipkin"` |  |
