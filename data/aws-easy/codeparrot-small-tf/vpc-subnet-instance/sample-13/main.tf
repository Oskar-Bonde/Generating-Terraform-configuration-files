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

# Create a AWS VPCvariable with the appropriate values
variable "name_0" {
  default = "10.0.0.0/16"
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.default.id}"
  cidr_block        = "${var.name_0}"
  availability_zone = "${var.name_0}"
  map_public_ip_on_launch = true
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

