FROM tomcat

COPY tomcat/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY tomcat/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
WORKDIR /usr/local/tomcat/conf/
RUN wget https://s3-us-west-2.amazonaws.com/project.public/tomcat-users.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]
