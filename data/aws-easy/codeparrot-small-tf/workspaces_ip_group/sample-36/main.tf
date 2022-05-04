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
module "ip_group" {
  source = "./terraform/modules/ip_group"
}

