provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.aws_region
provider "aws" {
  region = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev/prod/prod.
# This is a map of maps having the keys:
#
# key = "key"
# value = "value"
#}

# Create a VPC to launch our instances into
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "terraform-example"
  }
}

