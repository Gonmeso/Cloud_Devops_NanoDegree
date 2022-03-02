#! /bin/bash

# Create Network
echo "Creating Network Stack"
aws cloudformation deploy --stack-name network --template-file network/network-cf-template.yml --parameter-override file://network/network-parameters.json --region eu-west-1 --profile udacity

echo "Creating Servers Stack"
# Create Servers
aws cloudformation deploy --stack-name servers --template-file servers/server-cf-template.yml --parameter-override file://servers/server-parameters.json --capabilities CAPABILITY_IAM --region eu-west-1 --profile udacity
