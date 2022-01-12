aws cloudformation deploy --template-file ./static_site.yaml --stack-name static-site-with-cdn --profile udacity
cd files
aws s3 cp --recursive  . s3://static-site-with-cdn-s3bucket-1colg50kc5ywc --profile udacity
cd ..