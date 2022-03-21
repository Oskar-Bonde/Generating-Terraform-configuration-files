# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance called web with Amazon Linux ami, zone us east 1 and lifecycle create before destroy true
resource "aws_instance" "name_0" {
  ami               = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "web-1"
  }
  lifecycle {
    create_before_destroy = true
  }
}


