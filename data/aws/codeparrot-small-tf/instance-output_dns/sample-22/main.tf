terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east

provider "aws" {
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro
# instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output block, create public DNS URL from vm

output "name_1" {
  value = aws_instance.name_0.public_dns
}

