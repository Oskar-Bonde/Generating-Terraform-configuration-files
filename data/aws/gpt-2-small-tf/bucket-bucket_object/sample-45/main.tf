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

# Create S3 Bucket Resource. Set bucket to cookie-based bucket for Cloud Storage
resource "aws_s3_bucket" "name_0" {
  bucket = "cloud-storage-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags {
    Name = "Cloud Storage Bucket"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  source = "index.html"
}

