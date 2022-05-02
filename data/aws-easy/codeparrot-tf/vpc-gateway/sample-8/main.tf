terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "terraform-aws-vpc"
  }
}

# create internet gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"

  tags = {
    Name = "terraform-aws-internet-gateway"
  }
}

