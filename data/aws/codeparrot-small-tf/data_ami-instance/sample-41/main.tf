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
# data block: Get latest AMI ID for Amazon Linux2 AMI
data "aws_ami" "name_0" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Create AWS instance with data ami id and t2.micro

}

