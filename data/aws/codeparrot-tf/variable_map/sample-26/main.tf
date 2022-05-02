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
  default = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_1" {
  type = "map"
  default = {
    aws_access_key = "ACCESS_KEY_HERE"
    aws_secret_key = "SECRET_KEY_HERE"
  }
}

