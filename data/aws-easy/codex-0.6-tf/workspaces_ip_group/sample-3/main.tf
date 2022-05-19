terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS
provider "aws" {
  region = var.region
}

# create a workspace ip group
resource "aws_workspaces_ip_group" "name_0" {
  name        = var.ip_group_name
  description = var.ip_group_description
  user_rules {
    cidr = var.ip_group_cidr
  }
}

