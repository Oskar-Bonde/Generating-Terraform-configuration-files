terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block in region us-east-1#instance_type
provider "aws" {
  instance_type = "t2.micro"
}

# Resource block to create a random pet name of length 5 with separator -
# https://www.terraform.io/docs/providers/aws/r/instance_template.html
resource "random_pet" "name_0" {
  length  = "5"
  special = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket"
  acl    = "private"
}

