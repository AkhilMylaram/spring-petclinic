# Stage 1: Build the application using Maven
FROM maven:latest as build

# Set the working directory for the Maven build
WORKDIR /app

# Copy the Maven project files (pom.xml, etc.)
COPY pom.xml .

# Download the dependencies (this step is cached if pom.xml is not changed)
RUN mvn dependency:go-offline

# Copy the rest of the application code
COPY src /app/src

# Build the application using Maven
RUN mvn clean package -DskipTests

# Stage 2: Create the final image with the built artifact
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory for the final image
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "app.jar"]

