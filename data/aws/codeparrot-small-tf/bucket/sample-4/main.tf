terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream"

# Create S3 bucket with just the name of the bucket
# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-bucket"
  acl    = "private"
}

