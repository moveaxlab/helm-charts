# Deploy Kube-downscaler using Helm chart

This directory contains helm-chart to deploy Kube-downscaler 

## Configuring your Deployment to downscale

Please add below annotations to the following namespaces:

```
kubectl annotate ns namespace 'downscaler/uptime=Mon-Sat 08:00-22:00 UTC'
```

 - dev (dev environment)

   


```
apiVersion: v1
kind: Namespace
metadata:
  annotations:
    downscaler/uptime: Mon-Sat 08:00-22:00 UTC
  name: dev
    
```
Note: this is a sample namespace template when creating a new namespace . for more info & configurations [here](https://github.com/hjacobs/kube-downscaler#configuration).

To exclude a namespace from down-scaler to be used in namespaces like istio-system :

```
apiVersion: v1
kind: Namespace
metadata:
  annotations:
    downscaler/exclude: "true"
  name: istio-system     
```

Note: the namespace kube-system is excluded by default 

## Architecture

The diagram below depicts how a Kube-downscaler agent control applications.
![Alt text](images/architecture.png?raw=true "Kube Kube-downscaler diagram")

## Quick Start
Below are instructions to quickly install and configure Kube-downscaler.

### Installing Kube-downscaler

1. Make sure connected to right cluster:
```
kubectl config current-context
```
2. Set right environment depending on cluster:
```
export KDS_ENV='[minikube | testing | staging | production]'
```
3. Before deploy make sure to update *values.yaml* in Kube-downscaler chart depending on your cluster support for RBAC:
```
rbac:
  create: false
```
Note: In case RBAC is active new service account will be created for Kube-downscaler with certain privileges, otherwise 'default' one will be used.

4. Deploy Kube-downscaler:
```
helm install . --values "config/${KDS_ENV}.yaml" --namespace default  --name kube-downscaler
```

5. Check the deployed release status:
```
helm list
```
```
NAME            	REVISION	UPDATED                 	STATUS  	CHART                	APP VERSION	NAMESPACE
kube-downscaler      	1       	Tue Sep 25 02:07:58 2018	DEPLOYED	kube-downscaler-0.5.1	0.5.1      	default
```

6. Check Kube-downscaler pod is up and running:
```
kubectl get pods
```
```
NAME                                               READY     STATUS    RESTARTS   AGE
kube-downscaler-kube-downscaler-7f58c6b5b7-rnglz   1/1       Running   0          6m
```

7. Check Kubernetes event logs, to make sure of successful deployment of Kube-downscaler:
```
kubectl get events -w
```


