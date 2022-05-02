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

# Create variable "aws_subnet_subnet_id" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR security groups IDs"
# }

# Create variable "aws_internet_security_group_ids" {
#   description = "CIDR security groups IDs"
# }

# Create variable "aws_route_table_route_table_association_id" {
#   description = "Route Table Association ID"
# }

# Create variable "aws_route_table_subnet_association_id" {
#   description = "Route Table Subnet Association ID"
# }

# Create variable "aws_security_group" {
#   description = "CIDR security groups"
# }

# Create variable "aws_security_group_id" {
#   description = "CIDR security groups ID"
# }

# Create variable "aws_vpc_dhcp_options_id" {
#   description = "CIDR security groups ID"
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
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_association_id" {
#   description = "Route Table Association ID"
# }

# Create variable "aws_route_table_subnet_association_id" {
#   description = "Route Table Subnet Association ID"
# }

# Create variable "aws_security_group_ids" {
#   description = "CIDR security groups IDs"
# }

# Create variable "aws_security_group" {
#   description = "C
}

