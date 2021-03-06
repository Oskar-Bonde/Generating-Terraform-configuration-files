terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPCresource block
resource "aws_vpc_resource" "name_0" {
  # VPC Resource block with VPC Resource block
  # https://www.terraform.io/docs/providers/aws/r/vpc.html
  # VPC Resource block with VPC Resource block
  # https://www.terraform.io/docs/providers/aws/r/vpc_subnet.html
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource block
resource "aws_subnet" "name_1" {
  # VPC Resource block with VPC Subnet block
  # https://www.terraform.io/docs/providers/aws/r/subnet.html
  vpc_id                  = "${aws_vpc_resource.name_0.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# Create EC2 Instance resource block
resource "aws_instance" "name_2" {
  # AWS Resource block with EC2 Instance block
  # https://www.terraform.io/docs/providers/aws/r/instance.html
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

