FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 libapache2-mod-php -y
RUN apt-get install php php-dom php-curl php-gd php-intl php-ldap php-zip php-mbstring php-mysql php-xml php-bz2 -y

ADD GLPI /opt/
ADD apache2/glpi.conf /etc/apache2/conf-available/glpi.conf

RUN cd /etc/apache2/conf-available/ && a2enconf glpi.conf 


RUN chown -R www-data:www-data /opt/glpi

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2



EXPOSE 80 443

CMD ["apachectl", "-D", "FOREGROUND"]