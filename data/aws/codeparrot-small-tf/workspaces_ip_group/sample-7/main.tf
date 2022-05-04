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

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP
resource "aws_security_group" "name_0" {
  name        = "terraform_ws"
  description = "Allow inbound traffic for AWS instances"
  vpc_id      = "${aws_vpc.terraform.id}"

  ingress {
    from_port   = 150.24.14.0/24
    to_port     = 150.24.14.0/24
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10250
    to_port     = 10250
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10251
    to_port     = 10251
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10252
    to_port     = 10252
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10254
    to_port     = 10254
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "udp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "udp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10255
    to_port     = 10255
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from
}
