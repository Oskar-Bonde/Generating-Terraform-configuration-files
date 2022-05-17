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

# Create S3 Bucket Resource. Set bucket to cookie-based name to avoid naming collisions with other resources
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie-based-bucket"
  acl    = "private"

  force_destroy = true

  tags = {
    Name = "cookie-based-bucket"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  source = "index.html"

  etag = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": "arn:aws:s3:::${var.bucket_name}/*"
    }
  ]
}

