FROM tomcat:8.0-alpine
LABEL maintainer="vinayaka"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /target/*.war /usr/local/tomcat/webapps/myapp.war
EXPOSE 8080
CMD ["catalina.sh","run"]
