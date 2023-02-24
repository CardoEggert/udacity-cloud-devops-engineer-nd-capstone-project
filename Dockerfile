FROM openjdk:19-alpine

RUN mkdir -m=rwx app 
WORKDIR /app

COPY build/libs/ /app/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/HelloSpring-0.0.1-SNAPSHOT.jar"]