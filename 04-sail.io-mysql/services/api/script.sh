#!/bin/bash
cd /usr/src/app
npm install

db-migrate up

sails lift
