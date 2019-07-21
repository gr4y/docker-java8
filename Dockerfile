FROM ubuntu:bionic

MAINTAINER Sascha Wessel <swessel@gr4yweb.de>

# Update System
RUN apt-get -y update && apt-get -y upgrade

# Install OpenJDK 8
RUN apt-get install -y openjdk-8-jdk wget curl

# Clean Up
RUN apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
	
# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre
