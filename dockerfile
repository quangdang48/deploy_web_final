# Use an official Tomcat base image
FROM tomcat:10.0

RUN mkdir -p /usr/local/tomcat/webapps/

# Copy the war file (or the project if it’s already built) into the Tomcat webapps directory
COPY *.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]