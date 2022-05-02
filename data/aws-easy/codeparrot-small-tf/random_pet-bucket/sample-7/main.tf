terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name 
resource "random_pet" "name_0" {
  length = 1
}

# Create AWS S3 bucket 
resource
aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-${random_pet.name_0.id}"
  acl    = "private"
}

