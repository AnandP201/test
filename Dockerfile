# Use the official Tomcat base image
FROM tomcat:latest

# Copy your .war file into the Tomcat webapps directory
COPY target/test-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"] 