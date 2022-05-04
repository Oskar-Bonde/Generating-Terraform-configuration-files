terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator - this is required because terraform doesn't support random provider
resource "random_pet" "name_0" {
  length  = 5
  special = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  acl    = "private"
}
