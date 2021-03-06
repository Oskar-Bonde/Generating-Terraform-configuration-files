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
  name = "tf-wafv2-ip-set"
  scope = "REGIONAL"
  description = "tf-wafv2-ip-set"
  ip_address_version = "IPV4"
  addresses = ["10.0.0.0/8"]
}

