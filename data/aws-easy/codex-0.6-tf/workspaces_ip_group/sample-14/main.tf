terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS
provider "aws" {
  region = "eu-west-1"
}

# create a workspace ip group
resource "aws_workspaces_ip_group" "name_0" {
  name = "terraform-ip-group"
  description = "terraform ip group"
  rules {
    source = "10.0.0.0/16"
  }
}

