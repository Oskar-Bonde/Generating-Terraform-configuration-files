terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    time = {
      source  = "hashicorp/time"
    }
  }
}

# Provider block AWS with region us east
provider "aws" {
  region = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "time_sleep" "name_1" {
  for_each = aws_instance.name_0
  duration = "90s"
}

