FROM openjdk:8-jre


RUN set -eux \
    && apt-get update \
    && apt-get install -y \
       postgresql-client-9.6 \
       mongodb-clients

COPY worker.jar /rmm/
COPY init-psql.sql /rmm/
COPY init-mongo.js /rmm/
COPY Server_Config.xml /rmm/
COPY docker-entrypoint.sh /rmm/

WORKDIR /rmm
RUN chmod +x /rmm/docker-entrypoint.sh


ENV PGPASSWORD admin
ENTRYPOINT ["/rmm/docker-entrypoint.sh"]
CMD ["java", "-jar", "worker.jar"]

