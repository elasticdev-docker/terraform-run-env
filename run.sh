#!/bin/sh

cd /var/tmp/share
terraform init && \
terraform plan && \
terraform apply -auto-approve
