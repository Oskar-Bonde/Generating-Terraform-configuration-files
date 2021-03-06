provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource for Module
resource "aws_s3_bucket" "name_0" {
  bucket = "state.kaak.us"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "state.kaak.us"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }
}

