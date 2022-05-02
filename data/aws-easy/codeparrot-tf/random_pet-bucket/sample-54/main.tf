provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block to create a random pet name
resource "random_pet_name" "name_0" {
  byte_length = "2"
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "test-terraform-state"
  acl    = "private"

  tags {
    Name = "test-terraform-state"
  }
}

