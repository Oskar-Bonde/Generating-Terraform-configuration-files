# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# Provider block
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-west-1"
}

# Resource block to Create VPC 
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "Name" = "vpc-us-east-1"
  }
}

# Resource block with VPC
resource "aws_vpc" "name_1" {
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-west-1
  tags = {
    "Name" = "vpc-us-west-1"
  }
}