FROM ubuntu:latest
ARG DEBIAN_FRONTEND=nointerative
WORKDIR /var/photogram
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apache2 php libapache2-mod-php php-mysql git
RUN rm -rf /var/www/html/index.html
RUN rm -rf /var/www/html/index.html
EXPOSE 80
VOLUME [ "var/www/html" ]
COPY ./data/ .
RUN chmod +x /var/photogram/main.sh
CMD /var/photogram/main.sh