terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = aws_s3_bucket.name_0.id
    target_prefix = "terraform-state-bucket/"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

