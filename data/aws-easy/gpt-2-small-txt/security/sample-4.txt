provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
# Terraform block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Groupvariable "sg_ssh_allow_all" {
#   type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
}

