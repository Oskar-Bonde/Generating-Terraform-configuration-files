with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Ignore changes to tags
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

