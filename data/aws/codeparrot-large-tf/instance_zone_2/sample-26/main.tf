provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Resource, make aws instance. Use ami-038f1ca1bd58a5790, instance type t2.small and availability zone us-east-1e
resource "aws_instance" "name_0" {
  ami           = "ami-038f1ca1bd58a5790" 
  instance_type = "t2.small"
  key_name      = "aws-keypair"
  subnet_id     = "subnet-1c2b3c4d"
  security_groups = ["sg-1c2b3c4d4"]
  associate_public_ip_address = true
  source_dest_check = false
  tags = {
    Name = "t2"
  }
}

