FROM ubuntu:18.04

LABEL maintainer="Goffity Corleone"

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget supervisor openssh-server openjdk-8-jdk
RUN echo 'root:p@ssW0rd'
# RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
