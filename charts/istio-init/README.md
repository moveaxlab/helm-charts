istio-init
==========
Helm chart to initialize Istio CRDs

Current chart version is `1.3.4`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| certmanager.enabled | bool | `false` |  |
| global.hub | string | `"docker.io/istio"` |  |
| global.imagePullPolicy | string | `"IfNotPresent"` |  |
| global.tag | string | `"1.3.3"` |  |
