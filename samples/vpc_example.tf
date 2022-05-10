
# Terraform block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# a VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}




