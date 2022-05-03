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
  bucket        = "modules.${var.project_name}"
  force_destroy = true
  acl           = "private"
  tags = {
    Name        = "modules"
    Environment = "production"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket        = "modules.${var.project_name}/"
  force_destroy = true
  acl           = "private"
  tags = {
    Name        = "modules.${var.project_name}/"
    Environment = "production"
  }
}

