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

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to Create VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Resource block with VPCresource
resource "aws_vpc_dhcp_options" "name_1" {
  domain_name_servers = ["AmazonProvidedDNS"]
  domain_name         = "us-east-1.compute.internal"
  tags = {
    Name = "dns-resolver"
  }
}

