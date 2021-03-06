terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with the following settings
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block with an amazon VPCvariable
resource "aws_vpc_dhcp_options" "name_0" {
  domain_name         = "us-east-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
}

