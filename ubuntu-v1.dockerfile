FROM ubuntu
RUN apt-get update -y && apt-get install maven -y && apt-get install openjdk-11-jdk -y
COPY demo /opt/app
WORKDIR /opt/app
EXPOSE 8080
CMD mvn clean package -DskipTests
WORKDIR /opt/app/target
ENTRYPOINT ["java", "-jar", "demo.jar"]
