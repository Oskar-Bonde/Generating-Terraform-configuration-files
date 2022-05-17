terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1

provider "aws" {
  region = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OS

data "aws_ami" "name_0" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon-linux-2.0.*-amazon
}

# Create AWS instance with data ami id and t2.micro
rce
}

