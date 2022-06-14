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
  ami           = "ami-0b33d91d"
  instance_type = "t2.micro"
}
