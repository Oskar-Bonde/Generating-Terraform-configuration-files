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
  default = {
    eu-west-1 = "ami-b1cf19c6"
    us-east-1 = "ami-de7ab6b6"
    }
}

# create variable block
variable "name_3" {
  default = "%s"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name = "${var.name_0}"
  description = "Allow http and ssh access"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
  description = "Allow http and ssh access"
  vpc_id = "${aws_vpc.main.id}"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami = "${lookup(var.name_2, var.name_1)}"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.name_4.name}"]
  key_name = "${var.name_3}"
  vpc_security_group_ids = ["${aws_security_group.name_4.id}"]
  subnet_id = "${aws_subnet.main.id}"
  associate_public_ip_address = true
  depends_on = ["aws_internet_gateway.gw"]
}

