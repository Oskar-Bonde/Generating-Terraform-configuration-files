terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    time = {
      source = "hashicorp/time"
    }
  }
}

# Provider block AWS
provider "aws" {
  region = "eu-west-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-c5eabbf5"
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "time_sleep" "name_1" {
  delay = "30s"
}

