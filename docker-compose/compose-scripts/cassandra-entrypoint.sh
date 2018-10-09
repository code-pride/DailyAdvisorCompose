#!/bin/sh
# Cassandra entrypoint

until cqlsh -f /*.cql && cqlsh -f /populate/*.cql; do
  echo "cqlsh: Cassandra is unavailable to initialize - will retry later"
  sleep 2
done &

exec /docker-entrypoint.sh "$@"