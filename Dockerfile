FROM tomcat:8.5.37-jre8
MAINTAINER yacobkaniganti@gmail.com
RUN apt-get update
COPY index.html /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
