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
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  logging {
    target_bucket = "${aws_s3_bucket.name_0.id}"
    target_prefix = "cookie-us-east-1/"
  }

  tags {
    Name = "cookie-us-east-1"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket" "name_1" {
  bucket = "index.html"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  logging {
    target_bucket = "${aws_s3_bucket.name_0.id}"
    target_prefix = "index.html/"
  }

  tags {
    Name = "index.html"
  }
}

