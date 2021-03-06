# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }  
}

# Provider Block 
provider "aws" {
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie"
}  

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  key          = "index.html"
  bucket       = aws_s3_bucket.name_0.id
}
