terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with the AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  byte_length = 4
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "random_name"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "random_name"
  }
}

