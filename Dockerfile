# Use the Eclipse Temurin JDK 17 with Alpine Linux as the base image
FROM eclipse-temurin:17-jdk-alpine
  
# Expose port 8080 for the application
EXPOSE 8080
 
# Set environment variable for the application home directory
ENV APP_HOME /usr/src/app

# Copy the JAR file from the target directory to the application home directory
COPY target/*.jar $APP_HOME/app.jar

# Set the working directory to the application home directory
WORKDIR $APP_HOME

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
