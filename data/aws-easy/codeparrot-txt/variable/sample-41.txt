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
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_id" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_internet_security_group_id" {
#   description = "Internet Security Group ID"
# }

# Create variable "aws_nat_gateway_id" {
#   description = "NAT Gateway ID"
# }

# Create variable "aws_subnet_nat_gateway_id" {
#   description = "NAT Gateway ID"
# }

# Create variable "aws_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_subnet_dhcp_options_id" {
#   description = "CIDR Block for DHCP Options"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_internet_security_group_id" {
#   description = "Internet Security Group ID"
# }

# Create variable "aws_nat_gateway_id" {
#   description = "NAT Gateway ID"
# }

# Create variable "aws_subnet_nat_gateway_id" {
#   description = "NAT Gateway ID"
# }

# Create variable "aws_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_subnet_dhcp_options_id" {
#   description = "CIDR Block for DHCP Options"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_internet_security_group_id" {
#   description = "Internet Security Group ID"
# }

# Create variable "aws_nat_gateway_id" {
#   description
}

