terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance with Amazon Linux ami and t2.micro
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# output block, get EC2 Instance Public IP
output "name_1" {
  value = aws_instance.name_0.public_ip
}

