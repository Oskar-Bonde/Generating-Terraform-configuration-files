# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and profile set as default
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-west-1"
}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "Name" = "vpc-us-east-1"
  }
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
resource "aws_vpc" "name_1" {
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-west-1
  tags = {
    "Name" = "vpc-us-west-1"
  }
}