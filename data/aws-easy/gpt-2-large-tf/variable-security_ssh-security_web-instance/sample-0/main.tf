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

# Create variable
# the AWS instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# variable block
# the AWS instance
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# make variable
# the AWS instance
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create variable block
# the AWS instance
resource "aws_instance" "name_4" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group
# the AWS instance
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group
# the AWS instance
resource "aws_instance" "name_6" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance
# the AWS instance
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

