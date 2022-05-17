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
  default = "us-east-1"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
resource "aws_instance" "name_1" {
  ami = var.ec2_ami_id
  instance_type = var.name_2
  key_name = var.ec2_key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id = aws_subnet.ec2_subnet.id
  tags = {
    Name = "ec2_instance"
  }
}

# create number variable called ec2_instance_count with default 1 and type number

# variable called ec2_instance_type with default 1 and type string
variable "name_2" {
  default = "t2.micro"
}

# creaet variable ec2_instance_type with default t3.micro and type string
variable "name_3" {
  default = "t3.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress

# variable ec2_ssh_port_open with default 22
variable "name_4" {
  default = 22
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic

}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids

}

