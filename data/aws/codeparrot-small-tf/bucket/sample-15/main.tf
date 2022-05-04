terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream" bucket name
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-bucket"
  acl    = "private"
}
