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

# Create variable "name_0" with a region in the us-east-1 region
variable "name_0" {
  default = "us-east-1"
}

