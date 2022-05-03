terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region = var.region
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
variable "name_0" {
  type = string
  default = "ami-0915bcb5fa77e4892"
  validation {
    condition     = length(var.name_0) == 12
    error_message = "ec2_ami_id must be a valid AMI id"
  }
}

