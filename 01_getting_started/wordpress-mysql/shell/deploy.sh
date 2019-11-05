#!/usr/bin/env bash
docker pull wordpress:latest
docker pull mysql:5

database=$(jq -r .config.database config.json)
user=$(jq -r .config.user config.json)
password=$(jq -r .config.password config.json)

docker run --name mysqlwp  -e MYSQL_ROOT_PASSWORD=${password} \
-e MYSQL_DATABASE=${database} \
-e MYSQL_USER=${user} \
-e MYSQL_PASSWORD=${password} \
-d mysql:5

docker run --name wordpress --link mysqlwp:mysql -p 80:80 \
-e WORDPRESS_DB_NAME=${database} \
-e WORDPRESS_DB_USER=${user} \
-e WORDPRESS_DB_PASSWORD=${password} \
-d wordpress

docker ps
