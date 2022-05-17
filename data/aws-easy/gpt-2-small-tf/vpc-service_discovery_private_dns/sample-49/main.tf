terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a VPC resourceresource block
resource "aws_vpc" "name_1" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "vpc"
  }
}

# Make a service discovery private dns namespace resource
}

