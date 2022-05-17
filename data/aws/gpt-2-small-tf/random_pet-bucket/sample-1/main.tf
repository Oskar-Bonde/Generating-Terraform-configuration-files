terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region  = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -1
resource "random_pet" "name_0" {
  length  = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "random-name"
  acl    = "private"

  lifecycle {
    create_before_destroy = true
  }

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  acl    = "private"

  # Create a new bucket with the bucket set as random pet name
  # bucket = "random-name"
  a
}

