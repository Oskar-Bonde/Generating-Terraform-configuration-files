terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream"
# Create S3 bucket with cloudfront
# Create S3 bucket with cloudfront
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-bucket"
  acl    = "private"
  force_destroy = true
}

