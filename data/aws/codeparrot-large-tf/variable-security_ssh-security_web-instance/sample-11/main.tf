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

# Create variable called aws_region with default "us-east-1" and type string "t2.micro"
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string "ami-0ff8a91507f77f867"
variable "name_1" {
  description = "The AMI ID to use for the EBS volume."
  default     = "ami-0915bcb5fa77e4892"
}

# create number variable called ec2_instance_count with default 1 and type number "1"
variable "name_2" {
  description = "The number of EC2 instances to launch."
  default     = 1
}

# creaet variable ec2_instance_type with default t3.micro and type string "t3.micro"
variable "name_3" {
  description = "The type of EC2 instance to launch."
  default     = "t3.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
resource "aws_security_group" "name_4" {
  name        = "ec2_sg"
  description = "Allow SSH traffic from the private subnet to the internet"
  vpc_id      = "${aws_vpc.default.id}"

  ingress {
    from_port   = 22
    to_port     = 22
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

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic
resource "aws_security_group" "name_5" {
  name        = "ec2_sg_web"
  description = "Allow SSH traffic from the private subnet to the internet"
  vpc_id      = "${aws_vpc.default.id}"

  ingress {
    from_port   = 80
    to_port     = 80
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
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
}

