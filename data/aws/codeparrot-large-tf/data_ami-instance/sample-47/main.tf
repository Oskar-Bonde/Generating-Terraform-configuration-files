provider
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
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# Create AWS instance with data ami id and t2.microvariable-1.0-0-0-0
resource "aws_instance" "name_1" {
  ami           = data.aws_ami.name_0.id
  instance_type = "t2.micro"
}

