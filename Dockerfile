############################################################
# Dockerfile to build Recipe Management Service
# Based on openjdk:8
############################################################

FROM openjdk:8

MAINTAINER Erik Hage <ehage4@gmail.com>

ENV TERM xterm

VOLUME /tmp

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD /target/rms-0.0.1-SNAPSHOT.jar rms_app.jar

RUN sh -c 'touch /rms_app.jar'

EXPOSE 3002
ENTRYPOINT ["java","-jar","rms_app.jar"]