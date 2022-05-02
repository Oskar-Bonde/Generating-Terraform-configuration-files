provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region  = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie us-east-1
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  key    = "index.html"
  acl    = "private"

  # Allow the bucket to be public-read-only
  # https://github.com/hashicorp/terraform-state/issues/59
  # https://github.com/hashicorp/terraform-state/issues/59
  force_destroy = true
}

