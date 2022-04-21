provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region  = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie/delete bucket
# This is a S3 bucket for the S3 bucket.
# This bucket is accessible via S3.
resource "aws_s3_bucket" "name_0" {
  bucket = "bucket-${var.environment}-${var.colour}-${var.region}-${var.environment}-${var.colour}-${var.region}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${var.environment}-${
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
}

