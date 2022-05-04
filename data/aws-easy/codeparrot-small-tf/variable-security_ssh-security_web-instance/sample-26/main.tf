terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable with default value
variable "name_0" {
  default = "10.0.0.0/16"
}

# variable block with default value
variable "name_1" {
  default = "10.0.1.0/24"
}

# make variable
variable "name_2" {
  default = "t2.micro"
}

# create variable block
variable "name_3" {
  default = "#!/bin/bash\necho ECS_CLUSTER=cluster-${var.name} >> /etc/ecs/ecs.config"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "ecs_sg"
  description = "Security group for ${var.name} instances"
  vpc_id      = "${var.name_0}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "ecs_sg"
  }
}

# Create Security Group# SSH access
resource "aws_security_group" "name_5" {
  name        = "ecs_sg_ssh"
  description = "Security group for ${var.name} instances"
  vpc_id      = "${var.name_0}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "ecs_sg_ssh"
  }
}

# Create EC2 Instanceresource for the ECS cluster
resource "aws_instance" "name_6" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

