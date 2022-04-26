# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS
provider "aws" {
  region  = "us-east-1"
}

# create wafv2 ip set
resource "aws_wafv2_ip_set" "name_0" {
  name               = "example"
  description        = "Example IP set"
  scope              = "REGIONAL"
  ip_address_version = "IPV4"
  addresses          = ["1.2.3.4/32", "5.6.7.8/32"]
}