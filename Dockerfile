FROM ubuntu:bionic

MAINTAINER Sascha Wessel <swessel@gr4yweb.de>

# Update System
RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install openjdk-8-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
	
# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
