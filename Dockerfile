FROM openjdk:19-alpine

ARG PATH_TO_JAR_FILE=build/libs/HelloSpring-0.0.1-SNAPSHOT.jar

WORKDIR /app

EXPOSE 8080

COPY ${PATH_TO_JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]