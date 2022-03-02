#! /bin/bash

aws s3 mb s3://udagram-nd-bucket --profile udacity

aws s3 cp files/index.html s3://udagram-nd-bucket/index.html --profile udacity
