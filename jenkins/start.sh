#!/bin/bash
docker run --name=jenkins -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /mnt/jenkins-server:/var/jenkins_home jenkins java -jar /usr/share/jenkins/jenkins.war
