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

# Terraform block with variable ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# terraform_ami_id = "ami-0ff8a91507f77f867"

# Terraform block with variable ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# terraform_ami_id = "ami-0ff8a91507f77f867"

# Terraform block with variable ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# terraform_ami_id = "ami-0ff8a91507f77f867"

# Terraform block with variable ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# terraform_ami_id = "ami-0ff8a91507f77f867"
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

