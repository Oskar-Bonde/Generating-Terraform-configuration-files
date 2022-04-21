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
  region  = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false if you want to destroy the bucket
# This is done in Terraform state.
#
# Terraform block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

