terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
provider "aws" {
  region = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state-import-bucket"
  acl    = "private"
  force_destroy = false
}

