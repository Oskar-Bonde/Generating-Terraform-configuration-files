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
  name = "test"
}

