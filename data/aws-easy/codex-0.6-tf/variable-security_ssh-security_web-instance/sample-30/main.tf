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
  type = string
  default = "10.0.0.0/16"
}

# variable block
variable "name_1" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# make variable
variable "name_2" {
  type = list(string)
  default = ["subnet-1", "subnet-2", "subnet-3"]
}

# create variable block
variable "name_3" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name = "allow_ssh"
  description = "Allow SSH traffic"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami = "ami-0de53d8956e8dcf80"
  instance_type = "t2.micro"
  key_name = "mykey"
  vpc_security_group_ids = [aws_security_group.name_4.id, aws_security_group.name_5.id]
  subnet_id = aws_subnet.public_subnet[0].id

  tags = {
    Name = "web"
  }
}

