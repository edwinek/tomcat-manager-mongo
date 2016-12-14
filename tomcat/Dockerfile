FROM tomcat:8-jre8-alpine

ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
RUN chmod 640 /usr/local/tomcat/conf/tomcat-users.xml
CMD ["catalina.sh", "run"]