terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with a single AWS account
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 4
  prefix  = "random_name"
  keepers = {
    "foo" = "bar"
  }
}

# Create AWS S3 bucket
}

