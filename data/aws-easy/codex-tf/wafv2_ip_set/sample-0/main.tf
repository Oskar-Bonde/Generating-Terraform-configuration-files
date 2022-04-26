terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS
provider "aws" {
  region = "us-east-1"
}

# create wafv2 ip set
resource "aws_wafv2_ip_set" "name_0" {
  name        = "tfWAFv2IPSet"
  scope       = "REGIONAL"
  description = "tfWAFv2IPSet"
  ip_address_version = "IPV4"
}

