FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
ENTRYPOINT ["java","-jar","/tpachat.jar"]
EXPOSE 8083