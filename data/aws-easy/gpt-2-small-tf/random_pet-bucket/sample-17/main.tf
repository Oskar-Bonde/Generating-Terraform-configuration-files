terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
# Terraform block with AWS and random provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource block to create a random pet namevariable
resource "random_pet" "name_0" {
  keepers = {
    name = "random_name"
  }
}

# Create AWS S3 bucket with random name
resource "aws_s3_bucket" "name_1" {
  bucket = "random_name"
  acl    = "private"
}
