provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# data AMI ID block#
# The data ami is defined as a public key in Amazon.
# The public key is defined in the same region as the AWS account in which
# you are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-123456789012
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234-1234-123456789012
# The key pair is defined in the same region as the AWS account in which you
# are creating the cluster.
# https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
# - arn:aws:iam::123456789012:key/abcd1234-1234-1234-1234
}

