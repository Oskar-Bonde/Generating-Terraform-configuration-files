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
  type = "map"
}

# Create AWS instance with data ami id and t2.microvariable "aws_region" {
#                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
}

