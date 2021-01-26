FROM debian:buster-slim

ENV JENKINS_HOME /var/jenkins_home
RUN mkdir /var/jenkins_home

# Fix for openjdk-x-jre-headless: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199
RUN mkdir -p /usr/share/man/man1

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		git \
		gnupg \
		wget \
		openjdk-11-jre-headless

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
RUN echo "deb https://pkg.jenkins.io/debian binary/" >> /etc/apt/sources.list.d/jenkins.list
RUN apt update && env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends jenkins

RUN wget -q -O - https://get.docker.com | sh

RUN apt clean && \
    rm -rf /var/lib/apt/lists/*
