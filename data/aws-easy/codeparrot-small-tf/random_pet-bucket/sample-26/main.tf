terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
    }
  }
}

# AWS provider block with random provider
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 8
  special = false
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-${var.random_pet.name_0}"
  acl    = "private"
  force_destroy = true
}

