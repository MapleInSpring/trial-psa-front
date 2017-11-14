#!/bin/bash

set -e -u -x

cd trial-psa/

npm install

ng build -prod --aot

touch dist/Staticfile

echo "pushstate: enabled" >> dist/Staticfile

cp dist ../dist/.

ls ../dist
