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

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  byte_length = 4
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "random_name"
  acl    = "private"

  force_destroy = true

  tags {
    Name = "random_name"
  }
}

