# Stage 1: Build Stage
FROM maven:3.6.3-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src/ src/
RUN mvn clean package

# Stage 2: Run Stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/my-java-app-1.0-SNAPSHOT.jar my-java-app.jar
ENTRYPOINT ["java", "-jar", "my-java-app.jar"]
