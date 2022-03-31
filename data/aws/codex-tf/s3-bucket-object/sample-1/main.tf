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
  bucket = "cookie"
  acl    = "private"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  bucket  = "${aws_s3_bucket.name_0.id}"
  key     = "index.html"
  content = "<html><body>Welcome to the cookie</body></html>"
}

