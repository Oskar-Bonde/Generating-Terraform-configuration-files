# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1 and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OS

}

