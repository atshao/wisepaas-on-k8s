FROM openjdk:8-jre


COPY ota-worker.jar /rmm/
COPY Server_Config.xml /rmm/
WORKDIR /rmm


CMD ["java", "-jar", "ota-worker.jar"]

