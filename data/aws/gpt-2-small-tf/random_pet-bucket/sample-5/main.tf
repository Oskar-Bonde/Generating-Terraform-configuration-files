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

# Resource block to create a random pet name of length 5 with separator -e
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet namevariable "aws_s3_bucket" {
  bucket = "random_name"
  acl    = "private"
}

