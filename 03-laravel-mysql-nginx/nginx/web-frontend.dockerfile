FROM nginx:1.10

ADD vhosts-frontend.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/html
