FROM tomcat:9.0-jdk11

ENV JAVA_OPTS="-Xmx256m"

RUN rm -rf /usr/local/tomcat/webapps/*

# The filename matches the Maven output configured in pom.xml.
COPY target/grade-calculator.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
