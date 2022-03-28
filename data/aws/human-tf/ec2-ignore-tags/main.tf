terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance and ignore changes to tags
resource "aws_instance" "name_0" {
  ami = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-3"
  }
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

