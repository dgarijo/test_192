#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f out.json ]; then
    echo -e "$(c R)[error] The model has not generated the output out.json"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output out.json"
    mv out.json ${OUTPUTS1}
fi
