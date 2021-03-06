terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region var.aws_region
provider "aws" {
  region  = "us-east-1"
}

# Create variable called aws_region that is a string typpe with default value "us-east-1"variable "aws_region"
# variable "aws_region" {
#    type = "string"
#    default = "us-east-1"
#    description = "The AWS region to create resources in"
# }

# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

