# Terraform Block the providers AWS and time
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
  region  = "us-east-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "time_sleep" "name_1" {
  depends_on = [aws_instance.name_0]
  create_duration = "90s"
}