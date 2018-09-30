#!/bin/sh
# App entrypoint

WAIT_SCRIPT=/compose-scripts/wait-for
TIMEOUT=200
APP_DIR=/app
RUN_SCRIPT=run.sh

for dependency in "$@"
do
    echo "Waiting for $dependency with timeout $TIMEOUT..."
    sh $WAIT_SCRIPT $dependency -t $TIMEOUT
    sleep 2
done

echo "All dependencies active, starting app"
sh $APP_DIR/$RUN_SCRIPT