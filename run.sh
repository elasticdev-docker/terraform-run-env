#!/bin/bash

export METHOD=${METHOD:=create}
export SHARE_DIR=${SHARE_DIR:=/var/tmp/share}

echo ""
echo "The method is $METHOD"
echo ""

cd $SHARE_DIR || exit 4

if [ $METHOD == "create" ]
then
    terraform init && \
    chmod -R 777 .terraform

    terraform plan && \
    terraform apply -auto-approve || exit 9
    exit 0
fi

if [ $METHOD == "destroy" ]
then
    chmod -R 777 .terraform
    terraform destroy -auto-approve || exit 9
    exit 0
fi

print "WARNING METHOD $METHOD does not fit create or destroy - skipping ..."
