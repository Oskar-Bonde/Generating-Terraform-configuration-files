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
  bucket = "terraform-tfstate-%s"
  acl    = "private"
}

# Create S3 Bucket 
resource "aws_s3_bucket_object" "name_1" {
  bucket = "${aws_s3_bucket.name_0.bucket}"
  key    = "terraform.tfstate"
  source = "%s"
}

