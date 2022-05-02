provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.name_0
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, and Terraform maps to prod.
variable "name_1" {
  description = "The name of the SSH key pair to use for AWS instances."
  default     = "dev"
}

