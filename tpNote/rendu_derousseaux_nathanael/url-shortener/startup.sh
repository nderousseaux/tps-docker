#!/bin/sh

if [ ! -z "${REDIS_HOST}" ]; then
  node /app/app.js
else
 node /app/app.js --redis-host $REDIS_HOST
fi
