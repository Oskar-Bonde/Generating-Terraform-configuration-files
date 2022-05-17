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

# Create S3 bucket with cloudfront.com
# S3 bucket is not deleted when terraform destroy
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-bucket-${var.env}"
  acl    = "private"

  # Make sure to construct a unique bucket name depending on the environment
  bucket_prefix = "icecream-bucket-"
}

