terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region and default profile
# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
variable "name_0" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" 
  validation {
    condition = length(var.name_0) > 4 && substr(var.name_0, 0, 4) == "ami-"
    error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
  }
}