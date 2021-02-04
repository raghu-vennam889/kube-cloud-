FROM ubuntu:18.04

ENV DEBIAN-FRONTEND=noninteractive

RUN apt-get update && apt-get install -y tzdata &&  apt-get install -y apache2 libapache2-mod-php php-mysql

RUN rm /var/www/html/index.html

COPY /* /var/www/html/

COPY entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh

CMD /entrypoint.sh
