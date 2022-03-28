terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance with subnet, vpc security group, and ami Amazon Linux
resource "aws_instance" "name_0" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  #subnet_id              = aws_subnet.name_1-public-subnet-1.id
  #vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  tags = {
    "Name" = "myec2vm"
  }    
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_1" {
  cidr_block = "10.0.0.0/16"

}

# AWS Internet Gateway with vpc id aws_vpc.name_1.id
resource "aws_internet_gateway" "name_2" {
  vpc_id = aws_vpc.name_1.id
}


# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  instance = aws_instance.name_0.id
  vpc      = true
  depends_on = [aws_internet_gateway.name_2]
}


