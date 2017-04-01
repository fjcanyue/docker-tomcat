# FROM tomcat:7-jre7
FROM tomcat:7-jre7-alpine
LABEL maintainer="Shen Shan <fjcanyue@hotmail.com>"

ADD tomcat7/server.xml $CATALINA_HOME/conf/
ADD tomcat7/context.xml $CATALINA_HOME/conf/

WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["catalina.sh", "run"]
