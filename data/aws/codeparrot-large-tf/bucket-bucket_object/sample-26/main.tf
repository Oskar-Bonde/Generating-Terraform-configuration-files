provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie
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
    target_bucket = "${aws_s3_bucket.name_0.id}"
    target_prefix = "terraform-state"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags {
    Name = "terraform-state"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  logging {
    target_bucket = "${aws_s3_bucket.name_0.id}"
    target_prefix = "terraform-state"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags {
    Name = "terraform-state-index"
  }
}

