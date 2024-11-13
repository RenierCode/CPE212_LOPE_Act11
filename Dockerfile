FROM ubuntu

ENV DEBIAN_FRONTEND = noninteractive
RUN apt update && apt install -y apache2 && \ 
	apt install -y mariadb-server && rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["systemctl enable apache2", "systemctl enable mariadb"]
