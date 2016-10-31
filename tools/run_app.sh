#!/bin/bash

app_dest=$1

export PORT=80

cd ${app_dest}
echo "=> Starting meteor app on port: ${PORT}"
node main.js