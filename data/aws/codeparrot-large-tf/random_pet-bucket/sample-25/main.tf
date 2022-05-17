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
# This is to ensure the generated name is not a duplicate of another resource
resource "random_pet_name" "name_0" {
  keepers = {
    keeper_name = "thisIsASecond-${random_pet_name.name_0.id}"
  }
  byte_length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "thisIsASecond-${random_pet_name.name_0.id}"
  acl    = "private"

  tags {
    Name = "thisIsASecond-${random_pet_name.name_0.id}"
  }
}

