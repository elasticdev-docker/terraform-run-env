#!/bin/bash

export METHOD=${METHOD:=create}
export SHARE_DIR=${SHARE_DIR:=/var/tmp/share}

cd $SHARE_DIR || exit 4

if [ $METHOD == "create" ]
then
    terraform init && \
    terraform plan && \
    terraform apply -auto-approve || exit 9
    exit 0
fi

if [ $METHOD == "destroy" ]
then
    terraform destroy -auto-approve || exit 9
    exit 0
fi

print "WARNING METHOD $METHOD does not fit create or destroy - skipping ..."
