terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create S3 Bucket, make bucket icecream linux bucket and acl is private
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-linux-bucket"
}