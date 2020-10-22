FROM dockerbase/tomcat8

RUN rm -rf /usr/local/tomcat/webapps/ROOT && \
    mkdir -p /usr/local/tomcat/webapps/ROOT

COPY boxfuse/target/hello-1.0 /usr/local/tomcat/webapps/ROOT

# open port
EXPOSE 8080

ENTRYPOINT /usr/local/tomcat/bin/catalina.sh run