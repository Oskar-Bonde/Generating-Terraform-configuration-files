terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = var.name_0
}

# Create variable
variable "name_0" {
  default = "us-east-1"
}

