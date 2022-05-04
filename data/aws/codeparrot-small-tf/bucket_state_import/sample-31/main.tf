provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east as default
provider "aws" {
  region = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false
# terraform destroy
resource "aws_s3_bucket" "name_0" {
  bucket = "state-import-bucket"
  acl    = "private"
  force_destroy = false
}

