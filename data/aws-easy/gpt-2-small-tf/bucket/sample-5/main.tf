terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource block
resource "aws_s3_bucket" "name_0" {
  bucket = "ec2demo-s3"
  acl    = "private"

  # The S3 bucket must exist in the same region as the bucket
  # bucket = "ec2demo-s3"

  # The S3 bucket must exist in the same region as the bucket
  # bucket = "ec2demo-s3"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
  # bucket = "cloudwatch-log-group"

  # The CloudWatch Log Group must exist in the same region as the CloudWatch Log Group
 
}

