FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2 && apt-get clean
COPY src/* /var/www/html/
RUN a2enmod rewrite
CMD apachectl -D FOREGROUND