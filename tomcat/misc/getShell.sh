#!/bin/bash

# I use this to access the container and copy all the files from the webapps.dist directory to webapps
# cd webapps.dist -> cp -R * ../webapps/
# Refresh web page and now you'll get the basic index.xhtml
POD=$(kubectl get pods -n tomcat -l app=tomcat-app -o jsonpath='{.items[0].metadata.name}')
kubectl exec -it $POD -n tomcat -c tomcat-app -- /bin/bash
