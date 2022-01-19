set -xe
aws cloudformation deploy --template-file ./static_site.yaml --stack-name static-site-with-cdn --profile udacity
BUCKET=$(aws cloudformation describe-stacks --stack-name static-site-with-cdn --query "Stacks[0].Outputs[?OutputKey=='BucketURL'].OutputValue" --output text --profile udacity)
cd files
aws s3 cp --recursive  . $BUCKET --profile udacity
echo "s3 URL: $(aws cloudformation describe-stacks --stack-name static-site-with-cdn --query "Stacks[0].Outputs[?OutputKey=='WebsiteURL'].OutputValue" --output text --profile udacity)"
cd ..
echo "Cloudfront URL: $(aws cloudformation describe-stacks --stack-name static-site-with-cdn --query "Stacks[0].Outputs[?OutputKey=='CFURL'].OutputValue" --output text --profile udacity)"