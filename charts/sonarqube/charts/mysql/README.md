mysql
=====
Fast, reliable, scalable, and easy to use open-source relational database system.

Current chart version is `0.6.0`

Source code can be found [here](https://www.mysql.com/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configurationFiles | string | `nil` |  |
| image | string | `"mysql"` |  |
| imagePullPolicy | string | `"IfNotPresent"` |  |
| imageTag | string | `"5.7.14"` |  |
| initializationFiles | string | `nil` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.size | string | `"8Gi"` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| service.port | int | `3306` |  |
| service.type | string | `"ClusterIP"` |  |
| ssl.certificates | string | `nil` |  |
| ssl.enabled | bool | `false` |  |
| ssl.secret | string | `"mysql-ssl-certs"` |  |
