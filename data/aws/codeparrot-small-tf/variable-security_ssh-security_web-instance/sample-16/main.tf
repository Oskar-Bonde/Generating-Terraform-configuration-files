terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0 and default profile
provider "aws" {
  profile = "default"
  region  = var.name_0
}

# Create variable called aws_region with default "us-east-1" and type string
variable "name_0" {
  type = string
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
resource "aws_instance" "name_1" {
  ami = var.ec2_ami_id
  instance_type = var.name_3
  key_name = var.ec2_key_name
  vpc_security_group_ids = [aws_security_group.name_4.id]
  subnet_id = aws_subnet.ec2_subnet.id
  tags = {
    Name = "ec2-demo"
  }
}

# create number variable called ec2_instance_count with default 1 and type number

variable "name_2" {
  type = number
}

# creaet variable ec2_instance_type with default t3.micro and type string

variable "name_3" {
  type = string
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
resource "aws_security_group" "name_4" {
  name = "ec2-demo-sg"
  description = "Security Group for EC2 Demo"
  vpc_id = aws_vpc.default.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    self = true
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = [
      aws_security_group.name_4.id,
    ]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = [
      aws_security_group.name_4.id,
    ]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = [
      aws_security_group.name_4.id,
    ]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = [
      aws_security_group.name_4.id,
    ]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    security_groups = [
      aws_security_group.name_4.id,
    ]
  }

  ingress {
    from_port = 0
    to_
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic

}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids

}

