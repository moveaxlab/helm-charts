postgresql
==========
Chart for PostgreSQL, an object-relational database management system (ORDBMS) with an emphasis on extensibility and on standards-compliance.

Current chart version is `6.3.13`

Source code can be found [here](https://www.postgresql.org/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| extraEnv | object | `{}` |  |
| global.postgresql | object | `{}` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/postgresql"` |  |
| image.tag | string | `"11.5.0-debian-9-r60"` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| master.affinity | object | `{}` |  |
| master.extraVolumeMounts | list | `[]` |  |
| master.extraVolumes | list | `[]` |  |
| master.nodeSelector | object | `{}` |  |
| master.podAnnotations | object | `{}` |  |
| master.podLabels | object | `{}` |  |
| master.tolerations | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.registry | string | `"docker.io"` |  |
| metrics.image.repository | string | `"bitnami/postgres-exporter"` |  |
| metrics.image.tag | string | `"0.5.1-debian-9-r73"` |  |
| metrics.livenessProbe.enabled | bool | `true` |  |
| metrics.livenessProbe.failureThreshold | int | `6` |  |
| metrics.livenessProbe.initialDelaySeconds | int | `5` |  |
| metrics.livenessProbe.periodSeconds | int | `10` |  |
| metrics.livenessProbe.successThreshold | int | `1` |  |
| metrics.livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.readinessProbe.enabled | bool | `true` |  |
| metrics.readinessProbe.failureThreshold | int | `6` |  |
| metrics.readinessProbe.initialDelaySeconds | int | `5` |  |
| metrics.readinessProbe.periodSeconds | int | `10` |  |
| metrics.readinessProbe.successThreshold | int | `1` |  |
| metrics.readinessProbe.timeoutSeconds | int | `5` |  |
| metrics.securityContext.enabled | bool | `false` |  |
| metrics.securityContext.runAsUser | int | `1001` |  |
| metrics.service.annotations."prometheus.io/port" | string | `"9187"` |  |
| metrics.service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.service.loadBalancerIP | string | `nil` |  |
| metrics.service.type | string | `"ClusterIP"` |  |
| metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.enabled | bool | `false` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.mountPath | string | `"/bitnami/postgresql"` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.subPath | string | `""` |  |
| postgresqlDataDir | string | `"/bitnami/postgresql/data"` |  |
| postgresqlUsername | string | `"postgres"` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `6` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `5` |  |
| replication.applicationName | string | `"my_application"` |  |
| replication.enabled | bool | `false` |  |
| replication.numSynchronousReplicas | int | `0` |  |
| replication.password | string | `"repl_password"` |  |
| replication.slaveReplicas | int | `1` |  |
| replication.synchronousCommit | string | `"off"` |  |
| replication.user | string | `"repl_user"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| securityContext.enabled | bool | `true` |  |
| securityContext.fsGroup | int | `1001` |  |
| securityContext.runAsUser | int | `1001` |  |
| service.annotations | object | `{}` |  |
| service.port | int | `5432` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.enabled | bool | `false` |  |
| slave.affinity | object | `{}` |  |
| slave.extraVolumeMounts | list | `[]` |  |
| slave.extraVolumes | list | `[]` |  |
| slave.nodeSelector | object | `{}` |  |
| slave.podAnnotations | object | `{}` |  |
| slave.podLabels | object | `{}` |  |
| slave.tolerations | list | `[]` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| volumePermissions.enabled | bool | `true` |  |
| volumePermissions.image.pullPolicy | string | `"Always"` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/minideb"` |  |
| volumePermissions.image.tag | string | `"stretch"` |  |
| volumePermissions.securityContext.runAsUser | int | `0` |  |
