# Use the official OpenJDK 8 image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the build files to the container
COPY build/libs/be-aws-test-*.jar app.jar

# Expose the port that the Spring Boot application listens on
EXPOSE 8080

# Start the Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]