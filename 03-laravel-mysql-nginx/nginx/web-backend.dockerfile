FROM nginx:1.10

ADD vhosts-backend.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www
