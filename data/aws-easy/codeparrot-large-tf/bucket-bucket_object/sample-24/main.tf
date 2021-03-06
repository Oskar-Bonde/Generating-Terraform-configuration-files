provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  logging {
    target_bucket = aws_s3_bucket.name_0.id
    target_prefix = "terraform-state/"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-object"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  logging {
    target_bucket = aws_s3_bucket.name_1.id
    target_prefix = "terraform-state-object/"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

