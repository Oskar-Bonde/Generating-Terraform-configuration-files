provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "ec2demo"
  acl    = "private"

  tags = {
    Name = "ec2demo"
  }
}

# Create S3 Bucket objectvariable "s3_bucket_name" {
  type = "string"
}

