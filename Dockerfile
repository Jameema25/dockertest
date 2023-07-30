FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY jenkins-java-project/ /usr/local/apache2/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
