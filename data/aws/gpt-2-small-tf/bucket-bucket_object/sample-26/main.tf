provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie-friendly name and use Terraform to create it
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-cookie"
  acl    = "private"

  force_destroy = true

  tags = {
    Name = "terraform-cookie"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  content = filebase64("${path.module}/index.html")
}

