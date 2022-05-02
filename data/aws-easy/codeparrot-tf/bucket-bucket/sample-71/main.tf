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

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state-${var.environment}"
  acl    = "private"

  tags {
    Name = "terraform-state-${var.environment}"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-${var.environment}-object"
  acl    = "private"

  tags {
    Name = "terraform-state-${var.environment}-object"
  }
}

