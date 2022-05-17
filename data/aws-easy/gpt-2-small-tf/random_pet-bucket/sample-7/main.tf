terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
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
  keepers = {
    name = "random_name"
  }
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "random_name"
  acl    = "private"
}

