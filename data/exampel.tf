# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 and default profile
provider "aws" {
  profile = "default" 
  region  = "us-east-1"
}

# Resource block with an EC2 instance called ec2demo with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "ec2demo" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.mirco"
}
