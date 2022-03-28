terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
    }
  }
}

# AWS provider block in region us-east-1  and profile set as default
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# Resource block to create a random pet name of length 5 with separator -
resource "random_pet" "name_0" {
  length    = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = random_pet.name_0.id
}
