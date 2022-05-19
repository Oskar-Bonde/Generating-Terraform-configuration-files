

# vpc-subnet 56 %


# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource in private network 10.0.1.0/24 
# and map public ip on launch set true. Use VPC id
resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

#  variable_map 98 %

# Create Variable that is a map of strings. The default is 
# that key Terraform maps to true and Environment key maps to dev
variable "environment" {
  type = map(string)
  default = {
    Terraform = "true"
    Environment = "dev"
  }
}

# vpc-gateway-instance-eip 6\%
# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

# AWS Internet Gateway with vpc id
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

# Create EC2 Instance, use ami-047a51fa27710816e and t2.micro
resource "aws_instance" "my_instance" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  subnet_id = aws_subnet.my_subnet.id
}

# Resource block: Create Elastic IP that uses vpc, 
# ec2 instance id and depends on internet gateway
resource "aws_eip" "my_eip" {
  vpc = true
  instance = aws_instance.my_instance.id
  depends_on = [aws_internet_gateway.my_igw]
}

# azure-easy codex
# azurerm_image | 84.0% 


# resource block. Create azurerm image 
resource "azurerm_image" "image" {
  name                = "my-image"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "https://mystorage.blob.core.windows.net/vhds/myosdisk.vhd"
    size_gb  = 30
    caching  = "None"
  }
}