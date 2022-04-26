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
  default = "us-east-1"
}

# make variable
variable "name_2" {
  default = "us-east-1a"
}

# create variable block
variable "name_3" {
  default = "ami-0bbe6b35405ecebdb"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name = "${var.name_0}"
  description = "Allow http inbound traffic"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name = "${var.name_0}"
  description = "Allow ssh inbound traffic"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami = "${var.name_3}"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.name_4.id}"]
  subnet_id = "${aws_subnet.main.id}"
  associate_public_ip_address = true
}

