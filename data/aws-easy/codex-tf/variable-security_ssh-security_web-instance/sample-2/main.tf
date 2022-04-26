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
  default = "%s"
}

# variable block
variable "name_1" {
  default = "%s"
}

# make variable
variable "name_2" {
  default = "%s"
}

# create variable block
variable "name_3" {
  default = "%s"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "${var.name_0}"
  description = "Allow SSH and TCP/{%s} access."
  vpc_id      = "${aws_vpc.vpc_1.id}"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.vpc_1.cidr_block}"]
  }

  ingress {
    from_port   = "%s"
    to_port     = "%s"
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.vpc_1.cidr_block}"]
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "${var.name_0}"
  description = "Allow SSH and TCP/{%s} access."
  vpc_id      = "${aws_vpc.vpc_1.id}"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.vpc_1.cidr_block}"]
  }

  ingress {
    from_port   = "%s"
    to_port     = "%s"
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.vpc_1.cidr_block}"]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami             = "ami-c229c0a2"
  instance_type   = "t2.micro"
  subnet_id       = "${aws_subnet.subnet_1.id}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.name_4.id}"]
}

