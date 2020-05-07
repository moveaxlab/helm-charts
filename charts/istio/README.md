istio
=====
Helm chart for all istio components

Current chart version is `1.3.3`


# Istio

[Istio](https://istio.io/) is an open platform for providing a uniform way to integrate microservices, manage traffic flow across microservices, enforce policies and aggregate telemetry data.



The documentation here is for developers only, please follow the installation instructions from [istio.io](https://istio.io/docs/setup/kubernetes/install/helm/) for all other uses.

## Introduction

This chart bootstraps all Istio [components](https://istio.io/docs/concepts/what-is-istio/) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Chart Details

This chart can install multiple Istio components as subcharts:
- ingressgateway
- egressgateway
- sidecarInjectorWebhook
- galley
- mixer
- pilot
- security(citadel)
- grafana
- prometheus
- tracing(jaeger)
- kiali

To enable or disable each component, change the corresponding `enabled` flag.

## Prerequisites

- Kubernetes 1.9 or newer cluster with RBAC (Role-Based Access Control) enabled is required
- Helm 2.7.2 or newer or alternately the ability to modify RBAC rules is also required
- If you want to enable automatic sidecar injection, Kubernetes 1.9+ with `admissionregistration` API is required, and `kube-apiserver` process must have the `admission-control` flag set with the `MutatingAdmissionWebhook` and `ValidatingAdmissionWebhook` admission controllers added and listed in the correct order.
- The `istio-init` chart must be run to completion prior to install the `istio` chart.

## Resources Required

The chart deploys pods that consume minimum resources as specified in the resources configuration parameter.

## Installing the Chart

1. If a service account has not already been installed for Tiller, install one:
    ```
    $ kubectl apply -f install/kubernetes/helm/helm-service-account.yaml
    ```

1. Install Tiller on your cluster with the service account:
    ```
    $ helm init --service-account tiller
    ```

1. Set and create the namespace where Istio was installed:
    ```
    $ NAMESPACE=istio-system
    $ kubectl create ns $NAMESPACE
    ```

1. If you are enabling `kiali`, you need to create the secret that contains the username and passphrase for `kiali` dashboard:
    ```
    $ echo -n 'admin' | base64
    YWRtaW4=
    $ echo -n '1f2d1e2e67df' | base64
    MWYyZDFlMmU2N2Rm
    $ cat <<EOF | kubectl apply -f -
    apiVersion: v1
    kind: Secret
    metadata:
      name: kiali
      namespace: $NAMESPACE
      labels:
        app: kiali
    type: Opaque
    data:
      username: YWRtaW4=
      passphrase: MWYyZDFlMmU2N2Rm
    EOF
    ```

1. If you are using security mode for Grafana, create the secret first as follows:

    - Encode username, you can change the username to the name as you want:
    ```
    $ echo -n 'admin' | base64
    YWRtaW4=
    ```

    - Encode passphrase, you can change the passphrase to the passphrase as you want:
    ```
    $ echo -n '1f2d1e2e67df' | base64
    MWYyZDFlMmU2N2Rm
    ```

    - Create secret for Grafana:
    ```
    $ cat <<EOF | kubectl apply -f -
    apiVersion: v1
    kind: Secret
    metadata:
      name: grafana
      namespace: $NAMESPACE
      labels:
        app: grafana
    type: Opaque
    data:
      username: YWRtaW4=
      passphrase: MWYyZDFlMmU2N2Rm
    EOF
    ```

1. To install the chart with the release name `istio` in namespace $NAMESPACE you defined above:

    - With [automatic sidecar injection](https://istio.io/docs/setup/kubernetes/sidecar-injection/#automatic-sidecar-injection) (requires Kubernetes >=1.9.0):
    ```
    $ helm install istio --name istio --namespace $NAMESPACE
    ```

    - Without the sidecar injection webhook:
    ```
    $ helm install istio --name istio --namespace $NAMESPACE --set sidecarInjectorWebhook.enabled=false
    ```

## Configuration

The Helm chart ships with reasonable defaults.  There may be circumstances in which defaults require overrides.
To override Helm values, use `--set key=value` argument during the `helm install` command.  Multiple `--set` operations may be used in the same Helm operation.

Helm charts expose configuration options which are currently in alpha.  The currently exposed options can be found [here](https://istio.io/docs/reference/config/installation-options/).

## Uninstalling the Chart

To uninstall/delete the `istio` release but continue to track the release:
    ```
    $ helm delete istio
    ```

To uninstall/delete the `istio` release completely and make its name free for later use:
    ```
    $ helm delete --purge istio
    ```



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
