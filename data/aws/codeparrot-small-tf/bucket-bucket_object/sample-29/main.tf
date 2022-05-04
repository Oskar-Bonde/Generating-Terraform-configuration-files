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

# Create S3 Bucket Resource. Set bucket to cookie bucket name
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state.kaak.us-east-1.s3.amazonaws.com"
  acl    = "private"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
# and use the s3 object id as the key for index.html
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  content = file("index.html")
}
