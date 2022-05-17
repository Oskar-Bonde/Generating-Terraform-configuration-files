terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# AWS Internet Gateway with vpc id
resource "aws_instance" "name_4" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance, use ami-047a51fa27710816e and t2.micro
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block: Create Elastic IP that uses vpc, ec2 instance id and depends on internet gateway
resource "aws_instance" "name_4" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

