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
  bucket = "modules.${var.name}"
  acl    = "private"
  force_destroy = true
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  bucket  = aws_s3_bucket.name_0.id
  key     = "modules/${var.name}.zip"
  source = "modules/${var.name}.zip"
}

