#!/bin/bash
#
CONCURRENCY=2000

URL="http://localhost:8080"

echo "Starting high-load generation.."

while true; do
	seq 1 100000 | xargs -n1 -P $CONCURRENCY curl -s $URL > /dev/null
done
