#!/bin/sh
docker exec mysqlwp mysqldump -u wordpress -h localhost --password=wordpresspwd wordpress > wordpress.backup
