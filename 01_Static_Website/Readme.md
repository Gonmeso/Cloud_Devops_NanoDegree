
# Deploy Static Websito to AWS using S3 and CloudFront

This is a project regarding the first project of Udacity's Cloud DevOps Engineer Nanodegree Program.


## Run Locally

In order to deploy the website locally first clone the project

```bash
  git clone https://github.com/Gonmeso/Cloud_Devops_NanoDegree.git
```

Make sure you have AWS Cli installed

```bash
  aws --version
```

Configure the AWS Cli with you own credentials using

```bash
  aws configure --profile udacity ...
```

Deploy the website using the cloudformation template

```bash
  ./deploy_site.sh
```

Wait until done and visit the CloudFront or bucket domain 

```
s3 URL: http://static-site-with-cdn-s3bucket-11whvn8bj6zaq.s3-website-eu-west-1.amazonaws.com
Cloudfront URL: d3e8ozxcvjgw86.cloudfront.net
```


## Authors

- [@gonmeso](https://www.github.com/gonmeso)


## Acknowledgements

I want to thank Udacity for this project and the resources provided.


![Logo](https://www.udacity.com/images/svgs/udacity-tt-logo.svg)

