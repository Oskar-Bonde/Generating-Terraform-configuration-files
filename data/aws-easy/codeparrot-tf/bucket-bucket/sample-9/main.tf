terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block 
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
}

# Create S3 Bucket 
resourcevariable "terraform_state_bucket" {
  type = "string"
  default = "terraform-state"
}

