#!/bin/bash


#################################
# Author: Muthuram
# Date: 16-09-2024
# Version: V1

# This script is used to list the AWS resources details

#################################

set -x #debug mode

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

# List s3 buckets
aws s3 ls

# List EC2 instance details
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda details
aws lambda list-functions

# List IAM-Users
aws iam list-users

