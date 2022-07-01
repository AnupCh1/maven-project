FROM tomcat
LABEL app=web
COPY /var/lib/jenkins/workspace/jan-docker-CI/webapp/target/webapp.war /usr/local/tomcat/webapp





