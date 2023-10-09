#!/bin/bash

# This will print the name of the current tomcat deployment (POD) to STDOUT
POD=$(kubectl get pods -n tomcat -l app=tomcat-app -o jsonpath='{.items[0].metadata.name}')
echo -e $POD
