#!/bin/bash

app_src=$1
app_dest=$2

temp_src=/tmp/src
temp_bundle=/tmp/bundle

# build app
cp -ar ${app_src} ${temp_src}
cd ${temp_src}
meteor npm install
meteor build --directory ${temp_bundle} || \
meteor build --directory ${temp_bundle} --unsafe-perm

mv ${temp_bundle}/bundle ${app_dest}

# clean up
rm -rf ${temp_src}
rm -rf ${temp_bundle}