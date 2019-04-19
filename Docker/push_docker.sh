#!/bin/bash

set -ev

VERSION=`cat VERSION.txt`

docker push trinityctat/ctat_centrifuge:${VERSION}
docker push trinityctat/ctat_centrifuge:latest

