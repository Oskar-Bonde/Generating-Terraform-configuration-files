terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    time = {
      source  = "hashicorp/time"
    }
  }
}

# Provider block AWS
provider "aws" {
  region = var.region
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Example"
  }
}

# Time sleep resource block
resource "time_sleep" "name_1" {
  for_each = toset(aws_instance.name_0.*.id)
  duration = var.sleep_duration
}

