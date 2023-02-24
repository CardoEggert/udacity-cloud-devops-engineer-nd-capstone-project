FROM openjdk:19-alpine

WORKDIR /app

COPY build/libs/ /app/

EXPOSE 8080

ENTRYPOINT ["java","-jar", "HelloSpring-0.0.1-SNAPSHOT.jar"]