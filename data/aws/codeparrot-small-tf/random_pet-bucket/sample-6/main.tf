terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block in region us-east-1

provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# and a random suffix of length 5 with separator -
resource "random_pet" "name_0" {
  length  = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name

resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket-${random_pet.name_0.id}"
  acl    = "private"

  # To create the bucket, we need to set the encryption key
  # that is uploaded to S3. The encryption key must be in the same region
  # that the AWS S3 bucket will be created in.
  # The encryption key must be in the same region that the AWS S3
  # bucket will be created in.
  # The encryption key must be in the same region that the AWS S3
  # bucket will be created in.
  lifecycle {
    prevent_destroy = true
  }
}

