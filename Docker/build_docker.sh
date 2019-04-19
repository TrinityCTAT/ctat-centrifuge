#!/bin/bash

set -ev

VERSION=`cat VERSION.txt`

docker build -t trinityctat/ctat_centrifuge:${VERSION} .
docker build -t trinityctat/ctat_centrifuge:latest .

