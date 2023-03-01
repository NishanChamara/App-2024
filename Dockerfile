FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y nginx zip curl git

RUN echo "daemon off;" >>/etc/nginx/nginx.conf
RUN cd /var/www/html/ && git clone https://github.com/NishanChamara/App-2024.git
#RUN curl -o /var/www/html/master.zip -L https://github.com/NishanChamara/App-2024.git
#RUN cd /var/www/html/ && unzip master.zip && mv App-2024-main/*. && rm -rf App-2024-main  master.zip

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]