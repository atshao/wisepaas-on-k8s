FROM openjdk:8-jre


COPY worker.jar /rmm/
COPY Server_Config.xml /rmm/
WORKDIR /rmm

CMD ["java", "-jar", "worker.jar"]

