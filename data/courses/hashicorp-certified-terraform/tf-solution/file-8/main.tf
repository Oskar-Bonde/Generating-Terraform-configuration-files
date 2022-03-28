# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-dev"
  }
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true
resource "aws_subnet" "name_1" {
  vpc_id                  = aws_vpc.name_0.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

# AWS Internet Gateway with vpc id aws_vpc.name_0.id
resource "aws_internet_gateway" "name_2" {
  vpc_id = aws_vpc.name_0.id
}

# Create AWS route table
resource "aws_route_table" "name_3" {
  vpc_id = aws_vpc.name_0.id
}

# Create Route in Route Table for Internet Access
resource "aws_route" "name_4" {
  route_table_id         = aws_route_table.name_3.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.name_2.id
}

# Resource block: associate the Route Table with the Subnet
resource "aws_route_table_association" "name_5" {
  route_table_id = aws_route_table.name_3.id
  subnet_id      = aws_subnet.name_1.id
}

# Create aws security group and allow port 22, 80 and all IP and Ports Outbound
resource "aws_security_group" "name_6" {
  name        = "dev-vpc-default-sg"
  description = "Dev VPC Default Security Group"
  vpc_id      = aws_vpc.name_0.id

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all IP and Ports Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance with subnet, vpc security group, and ami Amazon Linux
resource "aws_instance" "name_7" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  subnet_id              = aws_subnet.name_1.id
  vpc_security_group_ids = [aws_security_group.name_6.id]
  tags = {
    "Name" = "myec2vm"
  }    
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_8" {
  instance = aws_instance.name_7.id
  vpc      = true
  depends_on = [aws_internet_gateway.name_2]
}


