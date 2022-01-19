set -xe
BUCKET=$(aws cloudformation describe-stacks --stack-name static-site-with-cdn --query "Stacks[0].Outputs[?OutputKey=='BucketURL'].OutputValue" --output text --profile udacity)
aws s3 rm $BUCKET --recursive --profile udacity
aws cloudformation delete-stack --stack-name static-site-with-cdn --profile udacity
aws s3api delete-bucket --bucket $BUCKET --profile udacity
echo "Starting stack delete"