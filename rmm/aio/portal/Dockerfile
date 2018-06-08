# rmm-portal 1.0.59 w/o OTA
FROM tomcat:8.5.31-jre8


COPY portal-*.war /rmm/portal.war
COPY docker-entrypoint.sh /rmm/

RUN set -eux; \
    chmod +x /rmm/docker-entrypoint.sh; \
    rm -rf /usr/local/tomcat/webapps/ROOT/*; \
    cd /usr/local/tomcat/webapps/ROOT; \
    unzip /rmm/portal.war

COPY Server_Config.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/classes


ENTRYPOINT ["/rmm/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]

