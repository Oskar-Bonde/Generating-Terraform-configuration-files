terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Make a service discovery private dns namespace resource
resource "aws_route53_zone" "name_1" {
  name = "hashicorp.com"
}

