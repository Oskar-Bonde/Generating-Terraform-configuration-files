terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region = "us-east-1"
}

# Create variable 
variable "name_0" {
  default = "my-bucket"
}

# variable block
variable "name_1" {
  type = "map"
  default = {
    Name = "my-bucket"
  }
}

# make variable
variable "name_2" {
  default = "private"
}

# create variable block
variable "name_3" {
  default = false
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0d7a9c6f3a8a8c6a3"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0d7a9c6f3a8a8c6a3"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = "ami-0bbe6b35405ecebdb"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = "subnet-0c8b4d9b9a4c4a8f4"
  vpc_security_group_ids = [aws_security_group.name_5.id]

  tags = {
    Name = "my-web-server"
  }
}

