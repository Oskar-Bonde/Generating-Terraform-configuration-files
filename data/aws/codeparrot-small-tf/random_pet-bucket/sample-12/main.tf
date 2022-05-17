terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
# https://cloud.google.com/s3/docs/reference/rest/v1/bucket#create_bucket_object
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket-${random_pet.name_0.id}"
  acl    = "private"
  force_destroy = true
}

