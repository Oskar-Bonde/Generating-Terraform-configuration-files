terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with random provider
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  count = 2
}

# Create AWS S3 bucketvariable "aws_region" {
  type = "string"
}

