terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS configuration file
# Terraform Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create wafv2 ip setvariable
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

