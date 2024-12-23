# Use the official Tomcat base image
FROM tomcat:9.0

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat

# Copy the WAR file to the Tomcat webapps directory
# Replace 'ABCtechnologies-1.0.war' with your WAR file name
COPY ABCtechnologies-1.0.war $CATALINA_HOME/webapps/ABCtechnologies.war

# Expose Tomcat's default port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
