provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# resource block: create 5 EC2 instances with ami-047a51fa27710816e and t2.micro instance type
resource "aws_instance" "name_0" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
}

