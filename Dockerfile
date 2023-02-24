FROM openjdk:19-alpine

RUN mkdir -p /app
WORKDIR /app

COPY build/libs/ /app/

RUN chmod +x /app/HelloSpring-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/HelloSpring-0.0.1-SNAPSHOT.jar"]