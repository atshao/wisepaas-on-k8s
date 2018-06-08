#!/usr/bin/env bash
set -o errexit
set -o xtrace


function wait() {
    until $@ &> /dev/null; do
        sleep 2
    done
}


echo "Waiting common worker done..."
wait ls /rmm/event/${EVENT_COMMON_READY}


echo "Starting portal..."
exec "$@"

