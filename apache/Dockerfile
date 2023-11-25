FROM ubuntu:latest
ARG DEBIAN_FRONTEND=nointerative
RUN apt-get update && apt-get install -y && apt install -y apache2
RUN apt-get install -y php libapache2-mod-php php-mysql
RUN rm -rf /var/www/html
RUN ln -s Users/agricreations/Desktop/testing/moovendhanv /var/www/html
EXPOSE 80
# VOLUME [ "/Users/agricreations/Desktop/testing/moovendhanv" ]
CMD ["apache2ctl", "-D", "FOREGROUND"]