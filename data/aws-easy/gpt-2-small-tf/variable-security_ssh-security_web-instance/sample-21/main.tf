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

# Create variable
variable "name_2" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

# variable block with an EC2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# make variable
variable "name_2" {
  description = "CIDR block for VPC"
  default     = "10.0.1.0/24"
}

# create variable blockvariable "name_2" {
  description = "CIDR block for VPC"
  default     = "10.0.2.0/24"
}

# Create Security Group
resource "aws_security_group" "name_3" {
  name        = "ec2demo"
  description = "Allow inbound traffic for ECS"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
}

# Create EC2 Instance
}

