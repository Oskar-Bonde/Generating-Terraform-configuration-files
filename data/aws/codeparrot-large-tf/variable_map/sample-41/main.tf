provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, Test environment key maps to prod.
variable "name_0" {
  description = "The region where Terraform configuration is created. The default is us-east-1."
  default     = "us-east-1"
}

