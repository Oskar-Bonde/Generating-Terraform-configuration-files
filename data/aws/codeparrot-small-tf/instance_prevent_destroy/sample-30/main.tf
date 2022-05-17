# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Create EC2 Instance ami-0915bcb5fa77e4892, instance type t2.micro and the lifecycle prevent destroy set true

resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

