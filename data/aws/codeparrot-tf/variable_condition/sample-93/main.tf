provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region = "us-east-1"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
# varaible_ami_id = "ami-0915bcb5fa77e4892"

# Terraform configuration file
# Terraform Block with aws provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
