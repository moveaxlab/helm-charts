postgresql
==========
Object-relational database management system (ORDBMS) with an emphasis on extensibility and on standards-compliance.

Current chart version is `0.8.3`

Source code can be found [here](https://www.postgresql.org/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image | string | `"postgres"` |  |
| imageTag | string | `"9.6.2"` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image | string | `"wrouesnel/postgres_exporter"` |  |
| metrics.imagePullPolicy | string | `"IfNotPresent"` |  |
| metrics.imageTag | string | `"v0.1.1"` |  |
| metrics.resources.requests.cpu | string | `"100m"` |  |
| metrics.resources.requests.memory | string | `"256Mi"` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.enabled | bool | `false` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.subPath | string | `"postgresql-db"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| service.externalIPs | list | `[]` |  |
| service.port | int | `5432` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
