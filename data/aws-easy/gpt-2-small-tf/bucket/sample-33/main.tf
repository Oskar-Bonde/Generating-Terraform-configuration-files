terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource
resource "aws_s3_bucket" "name_0" {
  bucket = "ec2demo"
  acl    = "private"

  # The bucket must be in the same region as the bucket
  force_destroy = true

  tags = {
    Name = "ec2demo"
  }
}
