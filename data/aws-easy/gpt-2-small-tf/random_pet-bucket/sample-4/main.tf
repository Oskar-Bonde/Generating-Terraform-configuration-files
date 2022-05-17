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

# Resource block to create a random pet name#
resource "random_pet" "name_0" {
  length  = 8
  prefix  = "tf-random-name"
  keepers = {
    name = "tf-random-name"
  }
}

# Create AWS S3 bucketvariable "bucket" {
  type        = "string"
  description = "Name of the bucket to create"
}

