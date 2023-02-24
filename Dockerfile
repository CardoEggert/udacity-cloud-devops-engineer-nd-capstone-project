FROM openjdk:19-alpine

RUN mkdir -m=rwx app 
WORKDIR /app

COPY build/libs/HelloSpring-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]