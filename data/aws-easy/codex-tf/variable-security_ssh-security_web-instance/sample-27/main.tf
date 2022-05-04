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
  default = "10.0.0.0/16"
}

# variable block
variable "name_1" {
  default = "10.0.1.0/24"
}

# make variable
variable "name_2" {
  default = "10.0.2.0/24"
}

# create variable block
variable "name_3" {
  default = "10.0.3.0/24"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "default"
  description = "Allow all inbound traffic by default"
  vpc_id      = aws_vpc.default.id

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
    Name = "default"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "default2"
  description = "Allow all inbound traffic by default"
  vpc_id      = aws_vpc.default.id

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
    Name = "default2"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
  key_name      = "terraform"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.name_4.id]
  tags = {
    Name = "web"
  }
}

