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
  name        = "example"
  scope       = "REGIONAL"
  description = "Example IP Set"

  ip_address_version = "IPV4"

  ip_address_change_activation {
    activation_status = "ACTIVATED"
  }

  tags = {
    Environment = "production"
  }
}

