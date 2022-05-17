rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Database instanceresource "aws_db_instance" "ec2demo_db" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

