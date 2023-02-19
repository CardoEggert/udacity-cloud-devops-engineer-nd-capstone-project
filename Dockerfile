FROM gradle:7.6.0-jdk19-alpine

COPY . /app
WORKDIR /app

RUN gradle bootJar

COPY build/libs/HelloSpring-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]

