#!/usr/bin/env bash
set -o xtrace


echo "Executing init-psql.sql script..."
psql -U postgres -h rmm-psql-service -f /rmm/init-psql.sql
[ $? -eq 0 ] && rm -f /rmm/init-psql.sql

echo "Executing init-mongo.js script..."
mongo --host rmm-mongo-service /rmm/init-mongo.js
[ $? -eq 0 ] && rm -f /rmm/init-mongo.js


echo "Starting application..."
exec "$@"

