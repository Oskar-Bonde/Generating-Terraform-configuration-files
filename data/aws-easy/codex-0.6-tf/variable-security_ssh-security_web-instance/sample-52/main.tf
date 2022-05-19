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
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# make variable
variable "name_2" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# create variable block
variable "name_3" {
  default = ["public-a", "public-b", "public-c"]
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = "SSH"
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

  tags = {
    Name = "allow_ssh"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_http"
  description = "Allow HTTP access"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = "HTTP"
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

  tags = {
    Name = "allow_http"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"
  key_name      = "terraform"
  subnet_id     = "${element(aws_subnet.public.*.id, count.index)}"
  vpc_security_group_ids = ["${aws_security_group.name_4.id}", "${aws_security_group.name_5.id}"]

  count = 3

  tags = {
    Name = "web-${count.index}"
  }
}

