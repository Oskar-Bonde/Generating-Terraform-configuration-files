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

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR block for Availability Zone A"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR block for Availability Zone B"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR block for Availability Zone C"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for Availability Zone B"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for Availability Zone C"
# }

# Create variable "aws_vpc_id" {
#   description = "AWS ID of the VPC"
# }

# Create variable "aws_internet_gateway_id_igw" {
#   description = "IGW for Internet Gateway"
# }

# Create variable "aws_nat_gateway_id" {
#   description = "NAT Gateway id"
# }

# Create variable "aws_subnet_subnet_gw_a" {
#   description = "CIDR block for Availability Zone A"
# }

# Create variable "aws_subnet_subnet_gw_b" {
#   description = "CIDR block for Availability Zone B"
# }

# Create variable "aws_subnet_subnet_gw_c" {
#   description = "CIDR block for Availability Zone C"
# }

# Create variable "aws_nat_gateway_id_eip" {
#   description = "NAT Gateway id"
# }

# Create variable "aws_nat_gateway_id_natgw" {
#   description = "NAT Gateway id for NAT Gateway"
# }

# Create variable "aws_subnet_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_route_table_public_cidr_block
}

