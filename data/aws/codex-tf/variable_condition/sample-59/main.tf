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
  default = "ami-0915bcb5fa77e4892"
  description = "AMI ID to use for the EC2 instance"
  type = string
  validation {
    condition     = length(var.name_0) == 12
    error_message = "The AMI ID must be 12 characters long."
  }
}

