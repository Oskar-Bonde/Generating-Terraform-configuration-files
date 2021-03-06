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

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, prod, stage, prod_stage, stage_prod, stage_stage_prod
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

