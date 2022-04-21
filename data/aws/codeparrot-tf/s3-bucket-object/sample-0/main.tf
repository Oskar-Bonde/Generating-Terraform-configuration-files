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
  region  = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie bucket
# This is a bucket that will be used to store Terraform state for all AWS services.
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state-bucket-${var.environment}-terraform-state"
  acl    = "private"

  tags = {
    Name = "terraform-state-bucket-${var.environment}-terraform-state"
  }
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
}

