terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a AWS VPC resource
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a default network acl
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

