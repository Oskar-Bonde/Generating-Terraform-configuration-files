# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region  = var.name_0
}

# Create variable
variable "name_0" {
  type        = string
  default     = "us-east-1"
}

