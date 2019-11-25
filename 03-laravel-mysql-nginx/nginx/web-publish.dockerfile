FROM nginx:1.10

ADD vhosts-publish.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www
