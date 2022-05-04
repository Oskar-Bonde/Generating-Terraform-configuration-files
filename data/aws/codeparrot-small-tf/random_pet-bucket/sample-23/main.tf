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

# Resource block to create a random pet name of length 5 with separator -
resource "random_pet" "name_0" {
  length  = 5
  special = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-bucket"
  acl    = "private"

  # Terraform configuration
  force_destroy = true

  versioning {
    enabled = true
  }

  # Resource block to create a random pet name of length 5 with separator -
  # This is to allow us to create multiple pet names with the same name.
  lifecycle {
    prevent_destroy = true
  }
}

