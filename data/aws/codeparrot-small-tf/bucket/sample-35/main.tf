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

# Create S3 bucket for storing terraform state
# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-terraform-state"
  acl    = "private"
  force_destroy = true
}
