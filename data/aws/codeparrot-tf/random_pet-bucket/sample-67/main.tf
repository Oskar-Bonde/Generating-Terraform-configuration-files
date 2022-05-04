provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block in region us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# This is to test the random_pet_name functionality by using the module variable random_pet_name
resource "random_pet_name" "name_0" {
  keepers = {
    keeper1 = "a"
  }
  byte_length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "random_pet_name"
  acl    = "private"
  force_destroy = true
}
