# docker-tomcat
Support tomcat session replication by default

docker-compose.xml
```
version: '2'
services:
    web01:
        container_name: web01
        hostname: web01
        image: fjcanyue/tomcat-7
        restart: always
        expose:
            - "8080"
        ports:
            - "8080:8080"
        volumes:
            - /www/web01:/usr/local/tomcat/webapps
        environment:
            - CATALINA_OPTS=-Xms256m -Xmx512m -XX:PermSize=64m -XX:MaxPermSize=128m
    web02:
        container_name: web02
        hostname: web02
        image: fjcanyue/tomcat-7
        restart: always
        expose:
            - "8080"
        ports:
            - "8088:8080"
        volumes:
            - /www/web02:/usr/local/tomcat/webapps
        environment:
            - CATALINA_OPTS=-Xms256m -Xmx512m -XX:PermSize=64m -XX:MaxPermSize=128m
```
