terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAZY
resource "aws_network_acl" "name_0" {
  vpc_id = aws_vpc.network_vpc.id
  subnet_ids = [
    aws_subnet.network_subnet_a,
    aws_subnet.network_subnet_b,
    aws_subnet.network_subnet_c,
    aws_subnet.network_subnet_d,
  ]
}

