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
variable "name_3" {
  default = "us-east-1"
}

# variable block
variable "name_3" {
  default = "us-east-1"
}

# make variable
variable "name_3" {
  default = "us-east-1"
}

# create variable block
variable "name_3" {
  default = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = "vpc-0c9b9e6f8a9e9f8f7"

  ingress {
    description = "SSH access from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-example"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = "vpc-0c9b9e6f8a9e9f8f7"

  ingress {
    description = "SSH access from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-example"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = "ami-0b33d91d"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  subnet_id     = "subnet-0c9b9e6f8a9e9f8f7"
  vpc_security_group_ids = [aws_security_group.name_5.id]

  tags = {
    Name = "terraform-example"
  }
}

