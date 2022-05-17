terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "aws_access_key" {
#   description = "AWS access key"
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
# }

# Create variable "aws_region" {
#   description = "AWS region"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway for AWS"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR Block for Private Subnet"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR Block for Public Subnet"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR Block for AZ2"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR Block for AZ3"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR Block for AZ4"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR Block for AZ5"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR Block for AZ6"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR Block for AZ7"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR Block for AZ8"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR Block for AZ9"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway for AWS"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR Block for Public Subnet"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR Block for Private Subnet"
# }

# Create variable "
}

