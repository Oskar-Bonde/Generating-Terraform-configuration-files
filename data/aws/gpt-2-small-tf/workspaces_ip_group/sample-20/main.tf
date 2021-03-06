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

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAZAR.
resource "aws_network_acl" "name_0" {
  vpc_id                              = aws_vpc.network_acl.id
  subnet_ids                            = aws_subnet.network_acl.id
  security_groups                      = [aws_security_group.network_acl.id]
  associate_public_ip_address = true
  source_dest_check                     = false
}

