#!/bin/sh
java -Dserver.port=8095 -jar /gs-rest-service-0.1.0.jar &
service datadog-agent start
while true; do
  sleep 1000
done
