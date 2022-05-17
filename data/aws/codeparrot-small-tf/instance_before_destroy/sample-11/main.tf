terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance called web with ami-0915bcb5fa77e4892 and t2.micro, lifecycle create before destroy true

# Create lifecycle create before destroy true

# Create instance using the t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

