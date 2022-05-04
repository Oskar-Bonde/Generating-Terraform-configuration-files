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
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
  force_destroy = true
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket idvariable to access the object.
resource "aws_s3_bucket" "name_1" {
  bucket = "index.html"
  acl    = "private"
  versioning {
    enabled = true
  }
}
