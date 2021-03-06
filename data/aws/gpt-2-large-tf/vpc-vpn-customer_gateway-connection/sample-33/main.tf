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

# make a vpn gateway with the vpc id
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a customer gateway with BGP ASN set to 65000, ip address 172.0.0.1 and type ipsec.1.0.1 and type ipsec.2.0.1 and type ipsec.3.0.1 and type ipsec.4.0.1 and type ipsec.5.0.1 and type ipsec.6.0.1 and type ipsec.7.0.1 and type ipsec.8.0.1 and type ipsec.9.0.1 and type ipsec.10.0.1 and type ipsec.11.0.1 and type ipsec.12.0.1 and type ipsec.13.0.1 and type ipsec.14.0.1 and type ipsec.15.0.1 and type
# create a customer gateway with the vpc id
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# make a vpn connection with the vpn gateway id and customer gateway id. Use type ipsec.1, and use static routes only.
resource "aws_instance" "name_4" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

