provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# output block, get EC2 Instance Public IP from vm-0ff8a91507f77f867
# resource "aws_eip" "ec2demo" {
#   instance = "${aws_instance.name_0.id}"
#   vpc        = true
# }

# Create the VPC
resource "aws_vpc" "name_1" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "terraform-example"
  }
}

