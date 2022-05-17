terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1" and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group that allows port 80, 443 inbound and all ports outbound
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance with ami set to ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc web security group id
}

