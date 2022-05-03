provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket        = "terraform-state-bucket"
  acl           = "private"
  force_destroy = true
}

# Create S3 Bucket objectvariable
resource "aws_s3_bucket_object" "name_1" {
  bucket                  = aws_s3_bucket.name_0.id
  key                    = "terraform.tfstate"
  content                = file("terraform.tfstate")
  key                    = "terraform.tfstate.b64"
  provider               = aws.aws.arn
  server_side_encryption = "AES256"
}

