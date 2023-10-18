# Use the specified BASE image
FROM tomcat:11.0-jdk21-openjdk

# Copy files from temp java app to webapps location
RUN cp -rp /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

# docker login
# docker build -t digitalkali/tomcat-openjdk11-app:latest .
# docker push digitalkali/tomcat-openjdk11-app:latest
