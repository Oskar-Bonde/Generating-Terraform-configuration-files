# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block, region set to us east 1
provider "aws" {
  region = "us-east-1"
}

# Resource, an aws security group with the following ingress ports: 80, 443, 8080, 8081, 7080, 7081. All use cidr block 0.0.0.0/0

# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

