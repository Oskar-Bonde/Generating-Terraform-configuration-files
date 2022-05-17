terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with a random provider
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  byte_length = 4
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "random_name"
  acl    = "private"

  tags = {
    Name = "random_name"
  }
}

