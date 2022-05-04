provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region and profile
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id# and is not empty
data "aws_ami" "name_0" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}
