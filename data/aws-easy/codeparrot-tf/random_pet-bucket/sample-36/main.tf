provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block with AWS
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block to create a random pet namevariable
resource "random_pet_name" "name_0" {
  length  = 10
  special = false
  upper   = false
}

# Create AWS S3 bucket for the PET
resource "aws_s3_bucket" "name_1" {
  bucket = "test-terraform-state"
  acl    = "private"
  force_destroy = true
}

