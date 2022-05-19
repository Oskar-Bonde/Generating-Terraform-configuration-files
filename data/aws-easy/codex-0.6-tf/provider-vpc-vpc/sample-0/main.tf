terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block to Create VPC 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "my_vpc"
  }
}

# Resource block with VPC
resource "aws_subnet" "name_1" {
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "my_subnet"
  }
}

