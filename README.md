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

Run bash ./getShell.sh  <br />
cd webapps.dist  <br />
cp -R * ../webapps/  <br />
exit  <br />

Refresh web page a few times to generate some traffic and then validate via Log Analytics Workspace -> ContainerLogV2
