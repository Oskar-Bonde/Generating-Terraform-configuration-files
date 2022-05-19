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
  name = "ip_group"
  description = "ip_group"
  rules {
    source = "10.0.0.0/8"
  }
}

