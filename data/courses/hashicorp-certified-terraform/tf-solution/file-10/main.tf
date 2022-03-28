# Terraform Block with aws
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create S3 Bucket per environment with for_each and maps
resource "aws_s3_bucket" "name_0" {

  for_each = {
    dev  = "my-dapp-bucket"
    qa   = "my-qapp-bucket"
    stag = "my-sapp-bucket"
    prod = "my-papp-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}
