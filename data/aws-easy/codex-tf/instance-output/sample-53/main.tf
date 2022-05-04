terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

# Create EC2 Instance 
resource "aws_instance" "name_0" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "terraform-example"
  }
}

# Output block
output "name_1" {
  value = aws_instance.name_0.public_ip
}

