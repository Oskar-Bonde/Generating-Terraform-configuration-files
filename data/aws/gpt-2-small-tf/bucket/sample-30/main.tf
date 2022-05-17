terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream"
resource "aws_s3_bucket" "name_0" {
  bucket                       = "icecream-terraform"
  acl                            = "private"
  force_destroy                  = true
  force_delete                  = true
  force_update                  = true
  s3_bucket                     = "icecream-terraform-s3"
  force_destroy                  = true
  s3_key                        = "terraform/terraform.tfstate"
  s3_bucket_name                 = "icecream-terraform-s3"
  s3_key                        = "terraform/terraform.tfstate"
  s3_bucket_region               = "us-east-1"
  s3_key                       = "terraform/terraform.tfstate"
  s3_key                       = "terraform/terraform.tfstate"
  s3_key                       = "terraform/terraform.tfstate"
  s3_key                      = "terraform/terraform.tfstate"
  s3_key                      = "terraform/terraform.tfstate"
  s3_key                      = "terraform/terraform.tfstate"
  s3_key                      = "terraform/terraform.tfstate"
  s3_key                      = "terraform/terraform.tfstate"
  s3_key
}

