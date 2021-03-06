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
  byte_length = 2
}

# Create AWS S3 bucketresource "aws_s3_bucket" "random_name" {
  bucket                          = "test-bucket"
  force_destroy                    = true
  force_destroy_bucket = true
}

