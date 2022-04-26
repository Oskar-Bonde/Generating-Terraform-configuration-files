terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  cidr_block = "10.1.1.0/24"
  vpc_id     = "${aws_vpc.name_0.id}"
}

