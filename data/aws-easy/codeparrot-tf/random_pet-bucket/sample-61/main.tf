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
resource "random_pet" "name_0" {
  byte_length = "4"
}

# Create AWS S3 bucketvariable for the PET
resource "aws_s3_bucket_object" "name_1" {
  bucket = "${var.pet_bucket}"
  key    = "planet.txt"
  source = "hashicorp/planet.txt"
}

