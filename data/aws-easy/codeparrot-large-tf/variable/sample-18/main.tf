terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "name_0" with a region
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

