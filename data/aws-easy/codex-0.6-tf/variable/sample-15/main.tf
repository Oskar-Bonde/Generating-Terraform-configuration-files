terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Create variable
variable "name_0" {
  description = "Instance type"
  default     = "t2.micro"
}

