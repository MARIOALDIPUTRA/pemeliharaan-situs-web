#!/bin/bash -e

DEST="s3://zooniverse-static/maintenance" # No trailing slash
PUBLISH_FILES=("index.html" "logo.png")

for FILE in ${PUBLISH_FILES[*]}
do
    aws s3 cp $FILE $DEST/$FILE
done
