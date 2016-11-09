#!/bin/bash

app_src=$1
app_dest=$2

temp_bundle=/tmp/bundle

# build app
cd ${app_src}
meteor npm install
meteor build --directory ${temp_bundle} --allow-superuser || \
meteor build --directory ${temp_bundle} --unsafe-perm || \
meteor build --directory ${temp_bundle}

mv ${temp_bundle}/bundle ${app_dest}

# clean up
rm -rf ${temp_bundle}
