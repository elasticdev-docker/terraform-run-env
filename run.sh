#!/bin/sh

export METHOD=${METHOD:=create}

cd /var/tmp/share || exit 4

if [ $METHOD == "create" ]
then
    terraform init && \
    terraform plan && \
    terraform apply -auto-approve
else:
    terraform destroy -auto-approve
fi

