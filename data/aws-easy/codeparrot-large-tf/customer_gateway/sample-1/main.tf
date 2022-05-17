terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create customer gateway
resource "aws_customer_gateway" "name_0" {
  provider = aws.aws[0].id
  customer_gateway_id = "cgw-123456"
  tags = {
    "Name" = "cgw-123456"
  }
}

