#!/bin/sh 
echo start Sonar Stack
sudo docker network create "sonarnet"
sudo docker compose -f ./sonarServer.yml up -d --force-recreate