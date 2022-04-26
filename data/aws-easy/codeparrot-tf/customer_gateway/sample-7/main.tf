terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create customer gateway
resource "aws_customer_gateway" "name_0" {
  vpc_id = aws_vpc.example.id
}

