FROM ubuntu:18.04

LABEL maintainer="Goffity Corleone"

RUN apt update && apt upgrade -y
RUN apt install -y wget supervisor openssh-server openjdk-8-jdk
RUN echo 'root:p@ssW0rd'
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
