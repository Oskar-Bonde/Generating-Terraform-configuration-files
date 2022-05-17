terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a AWS VPC resource with cidr block 10.0.0.0/16
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# make a vpn gateway with the vpc id and the instance.
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a customer gateway with BGP ASN set to 65000, ip address 172.0.0.1 and type ipsec.1.0.1
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

