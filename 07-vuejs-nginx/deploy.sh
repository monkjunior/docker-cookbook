#!/bin/bash
docker build -t dockerize-vue .
docker rm -f kiosk_frontend
docker run -d --name kiosk_frontend -p 8016:80 dockerize-vue
