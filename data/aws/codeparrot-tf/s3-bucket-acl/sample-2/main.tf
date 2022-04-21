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

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false if you want to delete the bucket
# This is a terraform state-import-bucket module, so we can't do it for us-east-1
# So we just do it for us-east-1
module "state-import-bucket" {
  source = "git::https://github.com/terraform-community-modules/tf_aws_state_import_bucket"
  name = "terraform-state-import-bucket"
  # Terraform doesn't support state-import-bucket yet, so we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  # So we just do it for us-east-1
  #
}

