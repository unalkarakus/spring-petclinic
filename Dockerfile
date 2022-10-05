
FROM openjdk:17-slim

WORKDIR /app
ADD  ./target/spring-petclinic-2.7.3.jar /app/application.jar
EXPOSE 80 8080
ENTRYPOINT ["java","-jar","/app/application.jar"]