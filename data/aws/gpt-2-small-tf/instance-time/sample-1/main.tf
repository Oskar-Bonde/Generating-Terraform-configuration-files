one
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS with region us east-1 and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

