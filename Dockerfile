FROM ubuntu:latest
LABEL MAINTAINER="salmaan.iitkgp@gmail.com"




#why is r there
RUN mkdir -p /home/BAN/var/logs \
    && groupadd -g 100054 -r BAN \
    && useradd salmaan -u 100054 -r -g BAN -d /home/BAN \
    && chmod 755 /home/BAN/var/logs \
    && chown salmaan:BAN /home/BAN/var/logs

WORKDIR /home/BAN

RUN apt-get update

RUN apt-get install -y nginx

RUN apt-get install -y systemctl








CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
USER salmaan
EXPOSE 768