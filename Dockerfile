FROM ubuntu:bionic

MAINTAINER Sascha Wessel <swessel@gr4yweb.de>

# Update System
RUN apt-get -y update && apt-get -y upgrade

RUN apt-add-repository ppa:webupd8team/java && \
    apt-get update -y && \
    apt-get install -y oracle-java8-set-default && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
	
# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
