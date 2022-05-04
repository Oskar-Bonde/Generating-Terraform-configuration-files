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

# Resource block to create a random pet nameresource
resource "random_pet" "name_0" {
  length    = 1
  prefix    = "terraform-test-${random_pet.name_0.id}"
  separator = "-"
}

# Create AWS S3 bucket for Terraform state
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-test-${random_pet.name_0.id}"
  acl    = "private"
}

