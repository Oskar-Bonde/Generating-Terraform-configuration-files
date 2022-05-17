terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami = "ami-55a7ea65"
  instance_type = "m3.medium"
}

