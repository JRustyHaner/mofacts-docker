#!/bin/bash

CONTAINER_ID="<mofacts container id>"
EMAILS=("<your email address>")

if [ -z "$(docker ps -q --filter "id=$CONTAINER_ID")" ]; then
    for EMAIL_TO in "${EMAILS[@]}"
    do
        echo "Container $CONTAINER_ID is not running. Sending email to $EMAIL_TO..."
        echo "Container $CONTAINER_ID is not running on $(hostname)." | mail -s "$CONTAINER_ID Container not running" $EMAIL_TO
    done
else
    echo "Container $CONTAINER_ID is running."
fi