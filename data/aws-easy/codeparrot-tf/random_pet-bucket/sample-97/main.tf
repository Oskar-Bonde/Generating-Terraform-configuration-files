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
  byte_length = "4"
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  tags {
    Name = "terraform-example-terraform-state"
  }
}

