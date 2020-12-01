FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/zuulgateway-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} apigateway.jar
ENTRYPOINT ["java","-jar","apigateway.jar"]