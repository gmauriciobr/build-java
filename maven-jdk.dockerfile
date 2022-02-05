# Build
FROM maven:3.6.0-jdk-11-slim AS build
COPY demo /opt/app
RUN mvn -f /opt/app/pom.xml clean package -DskipTests

# Package
FROM openjdk:11
COPY --from=build /opt/app/target/demo.jar /opt/app/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/opt/app/demo.jar"]