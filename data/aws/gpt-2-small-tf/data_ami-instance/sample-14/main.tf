provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1 region
provider "aws" {
  region  = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OSvariable "ami_id" {
  type    = "string"
  default = "ami-0ff8a91507f77f867"
}

# Create AWS instance with data ami id and t2.micro
}

