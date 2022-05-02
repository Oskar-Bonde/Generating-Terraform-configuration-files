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
  length  = 5
  special = false
}

# Create AWS S3 bucketvariable
resource "aws_s3_bucket_object" "name_1" {
  bucket  = "state.kaak.us"
  key     = "terraform/test.tfstate"
  content = "Hello World!"
}

