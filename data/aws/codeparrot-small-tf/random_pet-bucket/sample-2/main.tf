terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# https://cloud.google.com/vpc/docs/how-to/creating-a-random-pet
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet nameresource
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-bucket-${random_pet.name_0.id}"
  acl    = "private"
  force_destroy = true
}

