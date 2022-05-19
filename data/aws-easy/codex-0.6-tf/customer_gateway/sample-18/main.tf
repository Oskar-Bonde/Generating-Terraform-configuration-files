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

# create customer gateway
resource "aws_customer_gateway" "name_0" {
  bgp_asn = 65000
  ip_address = "172.16.0.1"
  type = "ipsec.1"
}

