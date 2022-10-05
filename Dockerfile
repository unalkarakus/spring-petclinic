
FROM openjdk:17-slim


WORKDIR /app
ADD  ./target/spring-petclinic-2.7.3.jar /app/application.jar

RUN addgroup -g 1001 -S appuser && adduser -u 1001 -S appuser -G appuser
RUN mkdir /opt && chown -R appuser:appuser /opt
RUN mkdir /logs && chown -R appuser:appuser /logs
RUN chown -R appuser:appuser /app
USER appuser

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/application.jar"]