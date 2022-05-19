terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = "us-east-1"
}

# Create EC2 Instance 
resource "aws_instance" "name_0" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}

# Output block
output "name_1" {
  value = "${aws_instance.name_0.id}"
}

