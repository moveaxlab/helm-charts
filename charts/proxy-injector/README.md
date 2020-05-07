proxy-injector
==============
ProxyInjector chart that runs on kubernetes

Current chart version is `0.3.0`

Source code can be found [here](https://github.com/stakater/ProxyInjector)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| proxyinjector.configFilePath | string | `"/etc/ProxyInjector"` |  |
| proxyinjector.data."config.yml" | string | `"proxyconfig:\n  gatekeeper-image: \"moveax/keycloak-gatekeeper:latest\" \n  enable-default-deny: true\n  secure-cookie: true\n  verbose: true\n  enable-logging: true\n  cors-origins:\n    - '*'\n  cors-methods:\n  - GET\n  - POST\n  resources:\n  - uri: '/*'"` |  |
| proxyinjector.image.name | string | `"moveax/proxyinjector"` |  |
| proxyinjector.image.pullPolicy | string | `"IfNotPresent"` |  |
| proxyinjector.image.tag | string | `"latest"` |  |
| proxyinjector.labels.group | string | `"com.stakater.platform"` |  |
| proxyinjector.labels.provider | string | `"stakater"` |  |
| proxyinjector.labels.version | string | `"0.0.2"` |  |
| proxyinjector.mount | string | `"configmap"` |  |
| proxyinjector.replicas | int | `1` |  |
| proxyinjector.tolerations | object | `{}` |  |
| proxyinjector.watchGlobally | bool | `true` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
