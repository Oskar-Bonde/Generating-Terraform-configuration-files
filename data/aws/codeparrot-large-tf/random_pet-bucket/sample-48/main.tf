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
# This is to test the random_pet_name function in the module
resource "random_pet_name" "name_0" {
  length  = 5
  special = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "random_pet_name_bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = aws_s3_bucket.name_1.id
    target_prefix = "s3/photos/"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "random_pet_name_bucket"
  }
}

