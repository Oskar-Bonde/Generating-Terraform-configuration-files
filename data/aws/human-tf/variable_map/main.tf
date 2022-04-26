# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.aws_region
provider "aws" {
  region  = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_0" {
  type = map(string)
  default = {
    Terraform = "true"
    Environment = "dev"
  }
}