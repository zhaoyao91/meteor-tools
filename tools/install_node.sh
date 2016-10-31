#!/bin/bash

node_version=$1
node_arch=x64

node_dist=node-v${node_version}-linux-${node_arch}

cd /tmp
curl -O -L http://nodejs.org/dist/v${node_version}/${node_dist}.tar.gz
tar xvzf ${node_dist}.tar.gz
rm -rf /opt/nodejs
mv ${node_dist} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm