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
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# AWS Internet Gateway with vpc id 
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
}

# Create AWS route table with vpc id
resource "aws_route_table" "name_2" {
  vpc_id = aws_vpc.name_0.id
}

# Create route resource. Use destination 0.0.0.0/0, gateway id and route talbe id
resource "aws_route" "name_3" {
  route_table_id         = aws_route_table.name_2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.name_1.id
}