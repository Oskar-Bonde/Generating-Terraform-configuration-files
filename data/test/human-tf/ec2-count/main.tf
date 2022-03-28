terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# resource block: create 5 EC2 instances with ami Amazon Linux, 
resource "aws_instance" "name_0" {
  ami           = "ami-047a51fa27710816e" 
  instance_type = "t2.micro"
  count         = 5
}