#!/bin/sh
# -*- coding: utf-8 -*-

VER_STR="v18.16.1"

# install nodejs
cd /usr/local/src
curl -O -L https://nodejs.org/dist/${VER_STR}/node-${VER_STR}-linux-x64.tar.xz
tar Jxf node-${VER_STR}-linux-x64.tar.xz
cd /usr/local/bin
if [ -e node ]
then
    rm -f node
fi
ln -s /usr/local/src/node-${VER_STR}-linux-x64/bin/node node
if [ -e npm ]
then
    rm -f npm
fi
ln -s /usr/local/src/node-${VER_STR}-linux-x64/lib/node_modules/npm/bin/npm-cli.js npm
if [ -e npx ]
then
    rm -f npx
fi
ln -s /usr/local/src/node-${VER_STR}-linux-x64/lib/node_modules/npm/bin/npx-cli.js npx
