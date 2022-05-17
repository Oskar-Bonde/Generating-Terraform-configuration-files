terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS configuration file
# Terraform Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a workspace ip groupvariable "workspace_ip_group" {
  type        = "string"
  description = "Name of the Workspace IP Group"
}

