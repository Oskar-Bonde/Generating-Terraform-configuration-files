terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 1
  special = false
}

# Create AWS S3 bucketvariable
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  acl    = "private"
}

