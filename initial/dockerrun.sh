#!/bin/sh
nohup java -jar /gs-spring-boot.jar &
while true; do
  sleep 1000
done

