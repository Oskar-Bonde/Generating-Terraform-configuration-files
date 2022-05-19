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

# create a workspace ip group
resource "aws_workspaces_ip_group" "name_0" {
  name        = "my-ip-group"
  description = "My IP Group"
  rules       = ["10.0.0.0/16"]
}

