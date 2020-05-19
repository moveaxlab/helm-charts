ingresses
=========
A Helm chart that creates Ingresses only (Used with AWS-ALB-INGRESS-CONTROLLER & NGINX-INGRESS-CONTROLLER)

Current chart version is `0.1.0`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingresses[0].annotations."alb.ingress.kubernetes.io/actions.ssl-redirect" | string | `"{\"Type\": \"redirect\", \"RedirectConfig\": { \"Protocol\": \"HTTPS\", \"Port\": \"443\", \"StatusCode\": \"HTTP_301\"}}"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/healthcheck-path" | string | `"/"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/inbound-cidrs" | string | `"0.0.0.0/32,0.0.0.0/32"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/listen-ports" | string | `"[{\"HTTP\": 80}, {\"HTTPS\":443}]"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/scheme" | string | `"internet-facing"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/success-codes" | string | `"200,404"` |  |
| ingresses[0].annotations."alb.ingress.kubernetes.io/target-type" | string | `"ip"` |  |
| ingresses[0].annotations."kubernetes.io/ingress.class" | string | `"alb"` |  |
| ingresses[0].hosts[0].host | string | `"chart-example.local"` |  |
| ingresses[0].hosts[1].host | string | `"google.com"` |  |
| ingresses[0].hosts[2].host | string | `"google1.com"` |  |
| ingresses[0].hosts[3].host | string | `"google2.com"` |  |
| ingresses[0].hosts[4].host | string | `"google4.com"` |  |
| ingresses[0].hosts[5].host | string | `"google5.com"` |  |
| ingresses[0].hosts[6].host | string | `"google6.com"` |  |
| ingresses[0].name | string | `"test"` |  |
| ingresses[0].nginxServiceName | string | `"nginx"` |  |
| ingresses[0].nginxServicePort | int | `80` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/actions.ssl-redirect" | string | `"{\"Type\": \"redirect\", \"RedirectConfig\": { \"Protocol\": \"HTTPS\", \"Port\": \"443\", \"StatusCode\": \"HTTP_301\"}}"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/healthcheck-path" | string | `"/"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/inbound-cidrs" | string | `"0.0.0.0/32,0.0.0.0/32"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/listen-ports" | string | `"[{\"HTTP\": 80}, {\"HTTPS\":443}]"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/scheme" | string | `"internet-facing"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/success-codes" | string | `"200,404"` |  |
| ingresses[1].annotations."alb.ingress.kubernetes.io/target-type" | string | `"ip"` |  |
| ingresses[1].annotations."kubernetes.io/ingress.class" | string | `"alb"` |  |
| ingresses[1].hosts[0].host | string | `"chart-example.local"` |  |
| ingresses[1].hosts[1].host | string | `"amazon.com"` |  |
| ingresses[1].hosts[2].host | string | `"amazon1.com"` |  |
| ingresses[1].hosts[3].host | string | `"amazon2.com"` |  |
| ingresses[1].hosts[4].host | string | `"amazon4.com"` |  |
| ingresses[1].hosts[5].host | string | `"amazon5.com"` |  |
| ingresses[1].hosts[6].host | string | `"amazon6.com"` |  |
| ingresses[1].name | string | `"staging-nginx-ingress"` |  |
| ingresses[1].nginxServiceName | string | `"nginx-staging"` |  |
| ingresses[1].nginxServicePort | int | `80` |  |
