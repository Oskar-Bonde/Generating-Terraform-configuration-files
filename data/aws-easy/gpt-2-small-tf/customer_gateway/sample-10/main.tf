terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create customer gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.main.id}"
}

