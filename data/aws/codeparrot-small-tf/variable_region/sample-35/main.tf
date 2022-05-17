terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region var.name_0
provider "aws" {
  region = var.name_0
}

# Create variable called aws_region that is a string typpe with default value "us-east-1"
variable "name_0" {
  description = "AWS region"
  default = "us-east-1"
}
