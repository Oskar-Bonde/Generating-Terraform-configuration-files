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

# Create S3 Bucket Resourceresource block
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
}

# Create S3 Bucket objectvariable block
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "terraform.tfstate"
  content = <<EOF
{
  "version": "2012-10-17",
  "id": "terraform.tfstate",
  "object": "terraform.tfstate",
  "source": "terraform.tfstate"
}

