terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group that allows port 80, 443 inbound and all ports outbound
# http/tcp traffic from the internet.
resource "aws_security_group" "name_0" {
  name        = "sg_web"
  description = "Allow HTTP and SSH access from anywhere"
  vpc_id      = "${aws_vpc.default.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance with ami set to ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc web security group id
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

