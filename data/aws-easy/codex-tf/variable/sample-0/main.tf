terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create variable
variable "name_0" {
  type    = "string"
  default = "default_value"
}

