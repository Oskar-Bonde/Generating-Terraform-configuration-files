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
  bucket = "modules.${var.project_name}"
  acl    = "private"

  tags {
    Name = "S3 Bucket"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  bucket  = aws_s3_bucket.name_0.id
  key     = "modules/${var.project_name}/"
  source = "modules/${var.project_name}/"
}
