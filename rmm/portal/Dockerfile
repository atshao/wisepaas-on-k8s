# rmm-portal 1.0.59 w/o OTA
FROM tomcat:8.5.31-jre8


RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY portal-*.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]

