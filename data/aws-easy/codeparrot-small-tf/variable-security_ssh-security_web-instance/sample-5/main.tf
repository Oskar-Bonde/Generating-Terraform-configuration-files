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
  default = "hello"
}

# variable blockresource for resource
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# make variable block resource block
resource "aws_block_device" "name_2" {
  device_name = "/dev/xvdb"
  volume_size = "10"
  delete_on_termination = true
}

# create variable block resource block
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform_example"
  description = "Used in the terraform"
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

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform_example_sg"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"

  # SSH access from anywhere
}

# Create EC2 Instance
}

