#!/bin/bash
docker build -t angularbrick .
docker rm -f brickinup_frontend
docker run -d --name brickinup_frontend -p 8002:80  angularbrick
