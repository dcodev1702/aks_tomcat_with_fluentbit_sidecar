# AKS - Tomcat w/ Fluent-bit (sidecar)
## Azure Kubernetes Service (AKS) 
* Tomcat (openjdk11) Container w/ Fluent Bit as a sidecar to send telemetry from /usr/local/tomcat/logs to STDOUT where the Azure Monitor Agent (AMA) Daemon Set will then send the telemetry to ContainerLogV2

1. Authenticate to AKS  <br />

```console
kubectl create namespace tomcat
```

```console
kubectl apply -f ./fluentbit-sidecar-cm.yaml
```

```console
kubectl apply -f ./deployment.yaml
```

```console
kubectl apply -f ./loadbalancer.yaml
```

```console
kubectl get services -n tomcat
```
![http://20.75.166.182](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/bf00a9ff-ad52-4b71-aecf-596007ca58c1)


## Refresh web page to generate traffic then validate via Log Analytics Workspace -> ContainerLogV2

![Tomcat - Default WebApp](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/ce94c1c0-5e52-491f-b381-b142c02b6350)

## Fluent-Bit sending Tomcat Access Log via STDOUT

![Fluent-Bit sending Tomcat Access Log to STDOUT](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/fa78c708-ed8e-4652-a166-4835468797be)

## Log Analytics -- ContainerLogV2 :: Tomcat Access Log parsed.

![Tomcat Access Logs](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/8b013a42-104b-4237-94f8-64905ffb2aae)
