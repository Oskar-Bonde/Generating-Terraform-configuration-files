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

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy falsevariable "state_import_bucket"
# Terraform configuration file
# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

