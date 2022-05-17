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
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  bucket = "ec2demo-s3"
  key    = "ec2demo.zip"
  source = "./ec2demo.zip"
}

