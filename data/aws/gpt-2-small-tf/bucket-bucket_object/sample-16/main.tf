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

# Create S3 Bucket Resource. Set bucket to cookie-based bucket.
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie-based-bucket"
  acl    = "private"

  force_destroy = true

  tags = {
    Name = "cookie-based-bucket"
  }

  lifecycle {
    ignore_changes = ["name"]
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
}

