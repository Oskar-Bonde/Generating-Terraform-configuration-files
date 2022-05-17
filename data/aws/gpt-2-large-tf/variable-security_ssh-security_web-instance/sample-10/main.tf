terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.aws_region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create variable called aws_region with default "us-east-1" and type string
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create number variable called ec2_instance_count with default 1 and type number
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# creaet variable ec2_instance_type with default t3.micro and type string
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
resource "aws_instance" "name_7" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

