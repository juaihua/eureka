FROM java:8
ADD ./cloud-eureka-server/target/eureka-server.jar /opt/app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]