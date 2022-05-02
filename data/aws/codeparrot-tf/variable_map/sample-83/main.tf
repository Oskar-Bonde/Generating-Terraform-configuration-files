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
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_1" {
  description = "Path to the JSON file used to describe your account credentials, downloaded from Google Cloud Console."
  default     = "~/.aws/credentials"
}

