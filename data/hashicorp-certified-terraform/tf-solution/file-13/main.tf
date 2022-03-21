# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance ami Amazon Linux, instance type t2.micro and the lifecycle prevent destroy set true
resource "aws_instance" "name_0" {
  ami = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    prevent_destroy = true 
  }
}


