#!/bin/bash

set -e -u -x

cd trial-psa-front/

npm install

node_modules/@angular/cli/bin/ng build -prod --aot

cp -a dist ../

touch Staticfile
echo "pushstate: enabled" >> Staticfile

ls ../dist
