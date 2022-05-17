provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "ec2demo-s3"
  acl    = "private"

  # S3 Bucket name
  force_destroy = true

  tags = {
    Name = "ec2demo-s3"
  }
}

# Create S3 Bucket objectresource "aws_s3_bucket" "ec2demo-s3" {
  bucket = "ec2demo-s3"
  acl    = "private"

  # S3 Bucket name
  force_destroy = true

  tags = {
    Name = "ec2demo-s3"
  }
}

