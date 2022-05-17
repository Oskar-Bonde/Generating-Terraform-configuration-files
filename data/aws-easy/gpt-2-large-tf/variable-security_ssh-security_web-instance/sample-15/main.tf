terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create variable "ec2_instance_type" {
  instance_type = "t2.micro"
}

# variable block

resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# make variable

# Create variable "ec2_instance_name" {
  instance_name = "ec2-instance"
}

# create variable block

resource "aws_instance" "name_4" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group

resource "aws_instance" "name_5" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group

resource "aws_instance" "name_4" {
  instance_type = "t2.micro"
}

# Create EC2 Instance

resource "aws_instance" "name_5" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

