provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "name_0" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "root-device-size"
    values = ["${var.root_volume_size_gb}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "root-volume-size"
    values = ["${var.root_volume_size_gb}"]
  }

  filter {
    name   = "root-volume-size-in-gb"
    values = ["${var.root_volume_size_gb}"]
  }

  filter {
    name   = "root-volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "root-volume-size-in-gb-percent"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "root-volume-size-in-gb-percent-1"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "root-volume-type-percent-2"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type-percent-3"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type-percent-4"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type-percent-5"
    values = ["0.0"]
  }

  filter {
    name   = "root-volume-type-percent-6"
    values = ["0.0"]
  }

  filter {
    name   = "root
}

# Create AWS instance with data ami id and t2.micro
}

