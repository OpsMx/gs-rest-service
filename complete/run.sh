#!/bin/sh
java -Dserver.port=8095 -jar /gs-rest-service-0.1.0.jar &
hostname="hostname: `hostname`"
sed -i "s/# hostname: mymachine.mydomain/$hostname/g" /etc/dd-agent/datadog.conf
service datadog-agent start
while true; do
  sleep 1000
done
