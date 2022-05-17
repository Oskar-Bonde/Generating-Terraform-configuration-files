terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a service quota resourceresource "aws_instance" "ec2demo-c" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

