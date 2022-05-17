terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS with region us-east-1
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
provider "aws" {
  region = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_0" {
  type = map(string)
  default = {
    key = "value"
    value = "value"
  }
}

