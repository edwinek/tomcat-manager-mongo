FROM tomcat:8-jre8-alpine

ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
RUN chmod 640 /usr/local/tomcat/conf/tomcat-users.xml
CMD ["catalina.sh", "run"]