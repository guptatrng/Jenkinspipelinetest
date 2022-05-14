FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN rm /var/www/html/index.html
COPY index.html /var/www/html/
CMD service apache2 start; /bin/bash
