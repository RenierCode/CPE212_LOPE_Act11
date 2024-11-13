FROM ubuntu:latest

ENV DEBIAN_FRONTEND = noninteractive

RUN apt-get update && \
    apt-get install -y \
    apt-utils \
    apache2 \
    mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite

EXPOSE 80

CMD service mariadb start && service apache2 start && tail -f /dev/null
