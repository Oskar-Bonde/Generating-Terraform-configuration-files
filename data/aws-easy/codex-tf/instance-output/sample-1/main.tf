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
  ami           = "ami-0bbe6b35405ecebdb"
  instance_type = "t2.micro"
}

# Output block
output "name_1" {
  value = "${aws_instance.name_0.public_ip}"
}

