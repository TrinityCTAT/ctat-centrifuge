#!/bin/bash

VERSION=`cat VERSION.txt`

singularity build ctat_centrifuge.v${VERSION}.simg docker://trinityctat/ctat_centrifuge:$VERSION

singularity exec ctat_centrifuge.v${VERSION}.simg centrifuge

