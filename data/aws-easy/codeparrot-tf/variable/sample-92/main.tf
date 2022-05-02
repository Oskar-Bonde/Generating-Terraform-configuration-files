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

# Create variable "instance_name" {
#   default = "terraform-example"
# }

variable "name_0" {
  default = "t2.micro"
}

