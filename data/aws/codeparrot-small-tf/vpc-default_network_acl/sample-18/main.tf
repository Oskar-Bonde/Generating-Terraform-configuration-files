terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# create a default network acl, vpc acl id. As ingress, set protocal -1, rule number 100, cird block 0.0.0.0/0, from port 83 to port 0 and action allow
resource "aws_network_acl" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  subnet_ids = ["${aws_subnet.public.id}", "${aws_subnet.private.id}"]
  ingress {
    protocol = "all"
    rule_number = 100
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 83
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number = 101
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number = 102
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number = 103
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number = 104
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number = 105
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =106
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =107
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =108
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =109
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =1110
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol = "all"
    rule_number =1210
    egress = true
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  ingress {
    protocol
}

