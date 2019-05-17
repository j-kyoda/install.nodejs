#!/bin/bash
# -*- coding: utf-8 -*-

# install nodejs
cd /usr/local/src
curl -O -L https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
tar Jxf node-v10.15.3-linux-x64.tar.xz
cd /usr/bin
ln -s /usr/local/src/node-v10.15.3-linux-x64/bin/node node
ln -s /usr/local/src/node-v10.15.3-linux-x64/lib/node_modules/npm/bin/npm-cli.js npm
ln -s /usr/local/src/node-v10.15.3-linux-x64/lib/node_modules/npm/bin//npx-cli.js npx
