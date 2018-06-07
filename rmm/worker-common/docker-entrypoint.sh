#!/usr/bin/env bash
set -o errexit
set -o xtrace


function wait() {
    until $@ &> /dev/null; do
        sleep 2
    done
}


echo "Waiting PostgreSQL ready..."
wait pg_isready -h localhost

echo "Executing init-psql.sql script..."
psql -U postgres -h localhost -f /rmm/init-psql.sql

echo "Waiting MongoDB ready..."
wait mongo --eval "db.getCollectionNames()"

echo "Executing init-mongo.js script..."
mongo /rmm/init-mongo.js

echo "Waiting RabbitMQ ready..."
sleep 30

# notify rmm-portal
touch /rmm/event/${EVENT_COMMON_READY}


echo "Starting application..."
exec "$@"

