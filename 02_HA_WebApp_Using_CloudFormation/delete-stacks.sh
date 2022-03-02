#! /bin/bash
set -xe

echo "Deleting Network Stack"
# Delete network
aws cloudformation delete-stack --stack-name network --profile udacity --region eu-west-1

echo "Deleting Servers Stack"
# Delete Servers
aws cloudformation delete-stack --stack-name servers --profile udacity --region eu-west-1