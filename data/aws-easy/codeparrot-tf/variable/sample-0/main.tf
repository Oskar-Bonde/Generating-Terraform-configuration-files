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
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_subnet_subnet_a_id" {
#   description = "Subnet A ID"
# }

# Create variable "aws_subnet_subnet_b_id" {
#   description = "Subnet B ID"
# }

# Create variable "aws_subnet_subnet_c_id" {
#   description = "Subnet C ID"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "Subnet A"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "Subnet B"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "Subnet C"
# }

# Create variable "aws_subnet_subnet_az_az_a" {
#   description = "Subnet A"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "Subnet B"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "Subnet C"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_subnet_a_cidr_block" {
#   description = "CIDR block for subnet A"
# }

# Create variable "aws_subnet_subnet_b_cidr_block" {
#   description = "CIDR block for subnet B"
# }

# Create variable "aws_subnet_subnet_c_cidr_block" {
#   description = "CIDR block for subnet C"
# }

# Create variable "aws_subnet_subnet_az_a_cidr_block" {
#   description = "Subnet A CIDR block for subnet A"
# }

# Create variable "aws_subnet_subnet_az_b_cidr_block" {
#   description = "Subnet B CIDR block for subnet B"
# }

# Create variable "aws_subnet_subnet_az_c_cidr_block" {
#   description = "Subnet C CIDR block for subnet C"
# }

# Create variable "aws_security
}

