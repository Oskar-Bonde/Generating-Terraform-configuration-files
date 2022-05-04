terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a workspace ip groupvariable
# Terraform block with the AWS provider
provider "aws" {
  alias  = "workspaces"
  region  = "us-east-1"
}

