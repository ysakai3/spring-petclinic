# Use a base JDK image
FROM eclipse-temurin:17-jdk-alpine

# Set workdir inside container
WORKDIR /app

# Copy the built jar (to be added via GitHub Actions later)
COPY target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
