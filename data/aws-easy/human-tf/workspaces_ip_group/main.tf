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

# create a workspace ip group
resource "aws_workspaces_ip_group" "name_0" {
  name        = "Contractors"
  description = "Contractors IP access control group"
  rules {
    source      = "150.24.14.0/24"
    description = "NY"
  }
}