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
  bgp_asn    = 65000
  ip_address = "12.34.56.78"
  type       = "ipsec.1"
}
