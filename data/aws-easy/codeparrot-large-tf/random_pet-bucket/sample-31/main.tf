provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block to create a random pet namevariable
resource "random_pet_name" "name_0" {
  length  = 5
  special = false
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "test-${random_pet_name.name_0.id}"
  acl    = "private"
  force_destroy = true
}

