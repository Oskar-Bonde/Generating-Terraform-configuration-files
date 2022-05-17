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

# Create S3 Bucket Resource. Set bucket to cookie-based
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie-based-example"
  acl    = "private"

  # S3 bucket name must match the bucket name
  force_destroy = true

  tags = {
    Name = "cookie-based-example"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
}
