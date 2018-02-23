FROM java:8

RUN apt-get update && apt-get install stress-ng -y
ADD target/gs-spring-boot-0.1.0.jar /gs-spring-boot.jar
COPY dockerrun.sh /usr/local/bin/dockerrun.sh
RUN chmod +x /usr/local/bin/dockerrun.sh
CMD ["dockerrun.sh"]

