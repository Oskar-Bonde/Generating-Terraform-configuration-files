terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# and a random suffix of length 15 with separator -
resource "random_pet" "name_0" {
  length  = "5"
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name

resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket"
  acl    = "private"

  # To allow Terraform to create multiple S3 buckets with the same name, we need to use a random suffix
  force_destroy = true
}

