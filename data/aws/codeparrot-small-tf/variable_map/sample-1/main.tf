provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.aws_region
provider "aws" {
  region = var.aws_region
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev and prod
variable "name_0" {
  description = "Name of AWS key pair"
  default     = "dev"
}
