terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with a random provider
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet namevariable "random_pet_name" {
  type = "string"
}

# Create AWS S3 bucketvariable "aws_s3_bucket" {
  type = "string"
}

