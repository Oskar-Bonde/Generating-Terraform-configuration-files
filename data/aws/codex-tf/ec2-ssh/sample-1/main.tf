terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create Security Group that allows port 22 inbound and all outbound ports
resource "aws_security_group" "name_0" {
  name        = "terraform_acceptance_test_example"
  description = "Used in the terraform acceptance tests"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    protocol    = "tcp"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "tf-acc-test"
  }
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.name_0.id}"]
}

