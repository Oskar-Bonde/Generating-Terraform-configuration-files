terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block aws in us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block that creates an ec2 instance with ami-047a51fa27710816e, instance type t2.micro in zone us west 1a
resource "aws_instance" "name_0" {
  ami           = "ami-047a51fa27710816e" 
  instance_type = "t2.micro"
  key_name      = "ec2demo-az1"
  subnet_id     = "subnet-e1b2c3d4"
}
