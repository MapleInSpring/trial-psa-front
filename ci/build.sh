#!/bin/bash

set -e -u -x

cd trial-psa-front/

npm install

node_modules/@angular/cli/bin/ng build -prod --aot

touch dist/Staticfile

echo "pushstate: enabled" >> dist/Staticfile

cp -a dist ../

ls ../dist
