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
  bucket                    = "testingBucket"
  acl                        = "private"
  force_destroy              = true
  force_delete              = true
  force_mirror              = true

  tags = {
    Name                       = "ec2demo-s3"
    Environment               = "production"
    Usage                     = "production"
    Owner                      = "AWS"
    ProvisioningDate          = "2012-10-17"
    }
}

