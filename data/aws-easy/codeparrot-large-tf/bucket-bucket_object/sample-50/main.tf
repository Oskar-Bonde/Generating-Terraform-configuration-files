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
  bucket = "modules.${var.project_name}-${var.environment}-${var.colour}-${var.version}.zip"
  acl    = "private"

  tags {
    Name        = "module"
    Environment = var.environment
    Colour      = var.colour
    Version     = var.version
    Owner       = var.owner
    Creator     = var.creator
    Environment = var.environment
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "modules.${var.project_name}-${var.environment}-${var.colour}-${var.version}.zip"
  acl    = "private"

  tags {
    Name        = "bucket"
    Environment = var.environment
    Colour      = var.colour
    Version     = var.version
    Owner       = var.owner
    Creator     = var.creator
    Environment = var.environment
  }
}

