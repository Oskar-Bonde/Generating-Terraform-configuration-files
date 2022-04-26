terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block 
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
  force_destroy = true
}

# Create S3 Bucket 
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-s3"
  acl    = "private"
  force_destroy = true
}

