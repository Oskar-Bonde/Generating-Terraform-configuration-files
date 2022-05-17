terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1.0
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC id
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# create a nat gateway, use private connectivity type and subnet id
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

