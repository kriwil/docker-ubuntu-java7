# taken from ariya's dockerfile
# https://registry.hub.docker.com/u/ariya/centos6-teamcity-server/dockerfile/
# using ubuntu instead of centos

FROM ubuntu:14.04
MAINTAINER aldi <kriwil@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install wget tar
RUN apt-get install -y software-properties-common python-software-properties
RUN apt-add-repository -y ppa:webupd8team/java
RUN apt-get -y update

# has to run this manually :(
# RUN apt-get -y install oracle-java7-installer
