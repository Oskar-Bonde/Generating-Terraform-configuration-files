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
  bucket = "cookie-us-east-1.amazonaws.com"
  acl    = "public-read"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket idvariable to access the object.
resource "aws_s3_bucket_object" "name_1" {
  bucket = "index.html"
  key    = "index.html"
  source = "index.html"
}

