provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# data AMI ID blockvariable "ami_id" {
  type = "map"
}

# Create AWS instance
}

