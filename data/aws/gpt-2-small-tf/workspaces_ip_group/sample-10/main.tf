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
  vpc_id                               = aws_vpc.aws-network-vpc.id
  subnet_ids                             = aws_subnet.aws-subnet-us-east-1.id
  security_groups                       = [aws_security_group.aws-network-sg.id]
  key_name                               = aws_key_pair.aws-key-pair.key_name
  tags                                    = var.tags
}

