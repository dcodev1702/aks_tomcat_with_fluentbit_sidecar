# aks_tomcat_with_fluentbit_sidecar
Tomcat (openjdk11) Container w/ Fluent Bit as a side car to send telemetry from /usr/local/tomcat/logs to STDOUT where the AMA Daemon Set will then send the telemetry to ContainerLogV2
