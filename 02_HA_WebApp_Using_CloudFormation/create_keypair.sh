#! /bin/bash

aws ec2 create-key-pair \
    --key-name UdagramKeyPair \
    --query 'KeyMaterial' \
    --profile udacity \
    --region eu-west-1 \
    --output text > ~/.ssh/udagram-keypair.pem 

chmod 400 ~/.ssh/udagram-keypair.pem 