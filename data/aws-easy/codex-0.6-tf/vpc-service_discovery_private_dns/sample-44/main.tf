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

# Create a VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "myvpc"
  }
}

# Make a service discovery private dns namespace resource
resource "aws_service_discovery_private_dns_namespace" "name_1" {
  name = "mynamespace"
  vpc = aws_vpc.name_0.id
}

