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
  name = var.ws_ip_group_name
  description = var.ws_ip_group_description
  rules {
    source = var.ws_ip_group_source
  }
}

