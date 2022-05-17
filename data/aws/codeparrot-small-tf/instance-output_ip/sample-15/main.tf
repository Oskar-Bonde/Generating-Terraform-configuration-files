terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east and default profile
variable "name_0" {
  default = {
    us-east-1 = "ami-0ff8a91507f77f867"
  }
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro

# resource "aws_instance" "ec2demo" {
#   ami           = "ami-0ff8a91507f77f867"
#   instance_type = "t2.micro"
#   key_name      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmHUZLsuGvNUlCt2OvLH+QdP/ZYvQdP/fz/UdQv4/iG/Rj5wW/t2.micro"
#   subnet_id = "subnet-11ac0174"
#   vpc_security_group_ids = ["sg-1b5b6b6b6"]
#   user_data = <<-EOF
##!/bin/bash
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#set -e
#
}

# output block, get EC2 Instance Public IP from vm

}

