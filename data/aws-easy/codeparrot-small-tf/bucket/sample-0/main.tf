terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block 
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
  force_destroy = true
}
