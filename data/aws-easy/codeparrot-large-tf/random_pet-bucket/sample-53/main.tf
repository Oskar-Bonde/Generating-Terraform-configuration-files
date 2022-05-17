provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block with AWS
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
  bucket = "test-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = aws_s3_bucket.name_1.id
    target_prefix = "test"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

