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

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "modules.${var.project_name}-${var.environment}-${var.colour}-${var.environment_vpc}-${var.colour}-${var.environment_group}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }
}

