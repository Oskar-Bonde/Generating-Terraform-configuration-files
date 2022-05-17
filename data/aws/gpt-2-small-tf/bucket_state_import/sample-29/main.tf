provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east-1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy falsevariable "s3_bucket"
resource "aws_s3_bucket" "name_0" {
  bucket = "state-import-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags {
    Name = "state-import-bucket"
  }
}

