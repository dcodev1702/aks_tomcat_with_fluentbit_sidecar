# AKS - Tomcat w/ Fluent-bit sidecar
Tomcat (openjdk11) Container w/ Fluent Bit as a side car to send telemetry from /usr/local/tomcat/logs to STDOUT where the AMA Daemon Set will then send the telemetry to ContainerLogV2

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
bash ./getShell.sh
```

```console
cd webapps.dist
cp -R * ../webapps/
exit
```

```console
kubectl get services -n tomcat
```
![http://20.75.166.182](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/bf00a9ff-ad52-4b71-aecf-596007ca58c1)


Refresh web page a few times to generate some traffic and then validate via Log Analytics Workspace -> ContainerLogV2 <br />

![Tomcat - Default WebApp](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/ce94c1c0-5e52-491f-b381-b142c02b6350)


![Tomcat Access Logs](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/8b013a42-104b-4237-94f8-64905ffb2aae)
