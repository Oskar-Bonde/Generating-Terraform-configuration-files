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
  bucket = "ec2demo-s3"
  acl    = "private"

  tags = {
    Name = "ec2demo"
  }

  lifecycle {
    ignore_changes = ["name"]
  }
}

