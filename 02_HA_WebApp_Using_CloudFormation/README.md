
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

Create the bucket and upload the file

```bash
  ./create_s3_and_upload_files.sh
```


Deploy the stacks for the HA application

```bash
  ./create-stack.sh
```

This will create two stacks, a `network` stack focused on the VPC, subnets and networking and a `servers` stack focused on creating the ALB, target groups, autoscalling and bastion if the param has been filled

Wait until done and visit the load balancer output for the `servers` stack

### Add a bastion!

If you want to create a bastion there is a condition based on the parameter HasBastion, to create this bastion yos fill the `server-parameters.json` like the following:

```json
[
	{
		"ParameterKey": "HasBastion",
		"ParameterValue": "true"
	},
	{
		"ParameterKey": "Keypair",
		"ParameterValue": "YOURKEYPAR"
	}
]
```

The keypair can be created with the script `create_keypair.sh` or you can use an existing one.


## Authors

- [@gonmeso](https://www.github.com/gonmeso)


## Acknowledgements

I want to thank Udacity for this project and the resources provided.


![Logo](https://www.udacity.com/images/svgs/udacity-tt-logo.svg)

