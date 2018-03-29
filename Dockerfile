FROM openjdk:8-jdk-alpine

VOLUME /tmp

RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Europe/Zurich /etc/localtime \
    && apk del --no-cache tzdata

ADD target/svmeal-api-*.jar /springApp.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/springApp.jar"]
