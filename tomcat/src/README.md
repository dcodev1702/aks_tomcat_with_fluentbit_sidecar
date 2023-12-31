## Modify logging.properties and use Dockerfile to update the tomcat container
![JSONLogging](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/a601bcad-d073-48dc-a0d3-d18935999d06)

## Dockerfile:
![Dockerfile](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/5a4bdbaa-26e3-4d55-8fb0-fe63da76b245)

## Build Docker Container
```console
docker login
```

```console
docker build -t digitalkali/tomcat-openjdk11-app:latest .
```

```console
docker push digitalkali/tomcat-openjdk11-app:latest
```

## Update deployment.yaml to reflect the location of your newly built container
![image](https://github.com/dcodev1702/aks_tomcat_with_fluentbit_sidecar/assets/32214072/fe9c81d4-0ea0-41fc-b946-216feb0cfc53)
