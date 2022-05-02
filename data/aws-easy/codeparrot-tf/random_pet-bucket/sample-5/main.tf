provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block with AWS
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block to create a random pet name//
resource "random_pet_name" "name_0" {
  byte_length = 2
}

# Create AWS S3 bucketvariable for the PET
resource "aws_s3_bucket_variable" "name_1" {
  bucket_name = aws_s3_bucket.test.id
}

