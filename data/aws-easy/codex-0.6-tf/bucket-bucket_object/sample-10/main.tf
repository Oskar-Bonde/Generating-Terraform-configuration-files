terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block 
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-s3-bucket-example"
  acl    = "private"
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  bucket = "${aws_s3_bucket.name_0.id}"
  key    = "hello_world.txt"
  source = "hello_world.txt"
}

