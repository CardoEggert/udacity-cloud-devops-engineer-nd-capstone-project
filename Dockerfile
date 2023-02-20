FROM openjdk:19-alpine

WORKDIR /app

COPY build/ /app/

EXPOSE 8080

ENTRYPOINT ["java","-jar", "libs/HelloSpring-0.0.1-SNAPSHOT.jar"]