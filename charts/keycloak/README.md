keycloak
========
Open Source Identity and Access Management For Modern Applications and Services

Current chart version is `7.3.3`

Source code can be found [here](https://www.keycloak.org/)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kubernetes-charts.storage.googleapis.com/ | postgresql | 6.3.13 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterDomain | string | `"cluster.local"` |  |
| init.image.pullPolicy | string | `"IfNotPresent"` |  |
| init.image.repository | string | `"busybox"` |  |
| init.image.tag | float | `1.31` |  |
| init.resources | object | `{}` |  |
| keycloak.affinity | string | `"podAntiAffinity:\n  requiredDuringSchedulingIgnoredDuringExecution:\n    - labelSelector:\n        matchLabels:\n          {{- include \"keycloak.selectorLabels\" . | nindent 10 }}\n        matchExpressions:\n          - key: role\n            operator: NotIn\n            values:\n              - test\n      topologyKey: kubernetes.io/hostname\n  preferredDuringSchedulingIgnoredDuringExecution:\n    - weight: 100\n      podAffinityTerm:\n        labelSelector:\n          matchLabels:\n            {{- include \"keycloak.selectorLabels\" . | nindent 12 }}\n          matchExpressions:\n            - key: role\n              operator: NotIn\n              values:\n                - test\n        topologyKey: failure-domain.beta.kubernetes.io/zone\n"` |  |
| keycloak.basepath | string | `"auth"` |  |
| keycloak.cli.custom | string | `"{{ .Files.Get \"scripts/ssl-redirect.cli\" }}\n"` |  |
| keycloak.cli.datasource | string | `"{{ .Files.Get \"scripts/datasource.cli\" }}\n"` |  |
| keycloak.cli.enabled | bool | `true` |  |
| keycloak.cli.ha | string | `"{{ .Files.Get \"scripts/ha.cli\" }}\n"` |  |
| keycloak.cli.logging | string | `"{{ .Files.Get \"scripts/logging.cli\" }}\n"` |  |
| keycloak.cli.nodeIdentifier | string | `"{{ .Files.Get \"scripts/node-identifier.cli\" }}\n"` |  |
| keycloak.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| keycloak.containerSecurityContext.runAsUser | int | `1000` |  |
| keycloak.enableServiceLinks | bool | `false` |  |
| keycloak.existingSecret | string | `""` |  |
| keycloak.existingSecretKey | string | `"password"` |  |
| keycloak.extraArgs | string | `""` |  |
| keycloak.extraContainers | string | `""` |  |
| keycloak.extraEnv | string | `"- name: PROXY_ADDRESS_FORWARDING\n  value: \"true\"\n- name: KEYCLOAK_LOGLEVEL\n  value: DEBUG\n# - name: WILDFLY_LOGLEVEL\n#   value: DEBUG\n# - name: CACHE_OWNERS\n#   value: \"2\"\n# - name: DB_QUERY_TIMEOUT\n#   value: \"60\"\n# - name: DB_VALIDATE_ON_MATCH\n#   value: true\n# - name: DB_USE_CAST_FAIL\n#   value: false\n"` |  |
| keycloak.extraInitContainers | string | `""` |  |
| keycloak.extraPorts | string | `""` |  |
| keycloak.extraVolumeMounts | string | `""` |  |
| keycloak.extraVolumes | object | `{}` |  |
| keycloak.hostAliases | list | `[]` |  |
| keycloak.image.pullPolicy | string | `"IfNotPresent"` |  |
| keycloak.image.pullSecrets | list | `[]` |  |
| keycloak.image.repository | string | `"jboss/keycloak"` |  |
| keycloak.image.tag | string | `"9.0.0"` |  |
| keycloak.ingress.annotations."alb.ingress.kubernetes.io/tags" | string | `"environment=dev"` |  |
| keycloak.ingress.annotations."merge.ingress.kubernetes.io/config" | string | `"ingress"` |  |
| keycloak.ingress.enabled | bool | `true` |  |
| keycloak.ingress.hosts[0] | string | `"keycloak.dev.it"` |  |
| keycloak.ingress.labels | object | `{}` |  |
| keycloak.ingress.namespace | string | `"istio-system"` |  |
| keycloak.ingress.paths[0].path | string | `"/*"` |  |
| keycloak.ingress.paths[0].serviceName | string | `"ssl-redirect"` |  |
| keycloak.ingress.paths[0].servicePort | string | `"use-annotation"` |  |
| keycloak.ingress.paths[1].path | string | `"/*"` |  |
| keycloak.ingress.paths[1].serviceName | string | `"istio-ingressgateway"` |  |
| keycloak.ingress.paths[1].servicePort | int | `80` |  |
| keycloak.ingress.tls | list | `[]` |  |
| keycloak.jgroups.discoveryProperties | string | `"\"dns_query={{ template \"keycloak.fullname\" . }}-headless.{{ .Release.Namespace }}.svc.{{ .Values.clusterDomain }}\"\n"` |  |
| keycloak.jgroups.discoveryProtocol | string | `"dns.DNS_PING"` |  |
| keycloak.lifecycleHooks | string | `"# postStart:\n#   exec:\n#     command: [\"/bin/sh\", \"-c\", \"ls\"]\n"` |  |
| keycloak.livenessProbe | string | `"httpGet:\n  path: {{ if ne .Values.keycloak.basepath \"\" }}/{{ .Values.keycloak.basepath }}{{ end }}/\n  port: http\ninitialDelaySeconds: 300\ntimeoutSeconds: 5\n"` |  |
| keycloak.nodeSelector | object | `{}` |  |
| keycloak.persistence.dbHost | string | `"mykeycloak"` |  |
| keycloak.persistence.dbName | string | `"keycloak"` |  |
| keycloak.persistence.dbPort | int | `5432` |  |
| keycloak.persistence.dbUser | string | `"keycloak"` |  |
| keycloak.persistence.dbVendor | string | `"postgres"` |  |
| keycloak.persistence.deployPostgres | bool | `true` |  |
| keycloak.persistence.existingSecret | string | `""` |  |
| keycloak.persistence.existingSecretPasswordKey | string | `""` |  |
| keycloak.persistence.existingSecretUsernameKey | string | `""` |  |
| keycloak.podAnnotations | object | `{}` |  |
| keycloak.podDisruptionBudget | object | `{}` |  |
| keycloak.podLabels | object | `{}` |  |
| keycloak.podManagementPolicy | string | `"Parallel"` |  |
| keycloak.priorityClassName | string | `""` |  |
| keycloak.readinessProbe | string | `"httpGet:\n  path: {{ if ne .Values.keycloak.basepath \"\" }}/{{ .Values.keycloak.basepath }}{{ end }}/realms/master\n  port: http\ninitialDelaySeconds: 30\ntimeoutSeconds: 1\n"` |  |
| keycloak.replicas | int | `1` |  |
| keycloak.resources | object | `{}` |  |
| keycloak.restartPolicy | string | `"Always"` |  |
| keycloak.route.annotations | object | `{}` |  |
| keycloak.route.enabled | bool | `false` |  |
| keycloak.route.host | string | `nil` |  |
| keycloak.route.labels | object | `{}` |  |
| keycloak.route.path | string | `"/"` |  |
| keycloak.route.tls.enabled | bool | `false` |  |
| keycloak.route.tls.insecureEdgeTerminationPolicy | string | `"Redirect"` |  |
| keycloak.route.tls.termination | string | `"edge"` |  |
| keycloak.securityContext.fsGroup | int | `1000` |  |
| keycloak.service.annotations | object | `{}` |  |
| keycloak.service.hostname | string | `"keycloak.dev.it"` |  |
| keycloak.service.httpNodePort | string | `""` |  |
| keycloak.service.httpPort | int | `80` |  |
| keycloak.service.httpsNodePort | string | `""` |  |
| keycloak.service.httpsPort | int | `8443` |  |
| keycloak.service.istioIngressName | string | `"ingressgateway"` |  |
| keycloak.service.jgroupsPort | int | `7600` |  |
| keycloak.service.labels | object | `{}` |  |
| keycloak.service.name | string | `"http-keycloak"` |  |
| keycloak.service.port | int | `80` |  |
| keycloak.service.type | string | `"ClusterIP"` |  |
| keycloak.serviceAccount.create | bool | `false` |  |
| keycloak.serviceAccount.name | string | `nil` |  |
| keycloak.startupScripts | object | `{}` |  |
| keycloak.tolerations | list | `[]` |  |
| keycloak.username | string | `"keycloak"` |  |
| postgresql.existingSecret | string | `""` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.postgresqlDatabase | string | `"keycloak"` |  |
| postgresql.postgresqlPassword | string | `""` |  |
| postgresql.postgresqlUsername | string | `"keycloak"` |  |
| prometheus.operator.enabled | bool | `false` |  |
| prometheus.operator.prometheusRules.enabled | bool | `false` |  |
| prometheus.operator.prometheusRules.rules | object | `{}` |  |
| prometheus.operator.prometheusRules.selector.app | string | `"prometheus-operator"` |  |
| prometheus.operator.prometheusRules.selector.release | string | `"prometheus"` |  |
| prometheus.operator.serviceMonitor.interval | string | `"10s"` |  |
| prometheus.operator.serviceMonitor.namespace | string | `""` |  |
| prometheus.operator.serviceMonitor.path | string | `"/auth/realms/master/metrics"` |  |
| prometheus.operator.serviceMonitor.scrapeTimeout | string | `"10s"` |  |
| prometheus.operator.serviceMonitor.selector.release | string | `"prometheus"` |  |
| test.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| test.containerSecurityContext.runAsUser | int | `1000` |  |
| test.enabled | bool | `false` |  |
| test.image.pullPolicy | string | `"IfNotPresent"` |  |
| test.image.repository | string | `"unguiculus/docker-python3-phantomjs-selenium"` |  |
| test.image.tag | string | `"v1"` |  |
| test.securityContext.fsGroup | int | `1000` |  |
