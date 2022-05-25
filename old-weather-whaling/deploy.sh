#!/bin/bash -e

DEST="s3://zooniverse-static/whaling.oldweather.org" # No trailing slash
PUBLISH_FILES=("index.html" "main.css" "img/shape.svg" "img/zooniverse-logo.svg")

for FILE in ${PUBLISH_FILES[*]}
do
    aws s3 cp $FILE $DEST/$FILE
done
