#!/bin/bash

set -x
set -e

# PREREQUISITE: a repo that you can push to.  You are probably running
# a local docker registry that your kubelet nodes also have access to.
REPO=${REPO:-"$1"}


if [ -z "$REPO" ]
then
    echo "ERROR: no \$REPO set!"
    echo "Run a docker repository and set REPO to <hostname>:<port>"
    exit -1
fi


pushd image
docker build -t $REPO/ceph/ceph:latest .
popd

docker push $REPO/ceph/ceph:latest

