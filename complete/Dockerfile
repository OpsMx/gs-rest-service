FROM java:8

ADD target/gs-rest-service-0.1.0.jar /gs-rest-service-0.1.0.jar
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
COPY tomcat.yaml /etc/dd-agent/conf.d/tomcat.yaml
COPY install-dd.sh install-dd.sh
RUN DD_API_KEY=695b5df0d64cf8d783745f2a4451b0cb bash install-dd.sh
CMD ["run.sh"]
