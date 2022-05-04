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
  profile = "default"
  region  = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false
resource "aws_s3_bucket" "name_0" {
  bucket = "state-import-bucket"
  acl    = "private"

  # force recreation of the bucket if terraform destroy or terraform apply it
  force_destroy = true
}
