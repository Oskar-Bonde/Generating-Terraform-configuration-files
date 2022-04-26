# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 
provider "aws" {
  region  = "us-east-1"
}

# create an s3 bucket, set bucket to "my-tf-log-bucket" and acl to "log-delivery-write"
resource "aws_s3_bucket" "name_0" {
  bucket = "my-tf-log-bucket"
  acl    = "log-delivery-write"
}

# an s3 bucket, use bucket "my-tf-test-bucket" and acl private. Make a logging block, with target bucket id and target prefix "log/" 
resource "aws_s3_bucket" "name_1" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  logging {
    target_bucket = aws_s3_bucket.name_0.id
    target_prefix = "log/"
  }
}