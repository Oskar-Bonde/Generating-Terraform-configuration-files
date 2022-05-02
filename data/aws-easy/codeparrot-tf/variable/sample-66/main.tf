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

# Create variable "aws_route_table_private_id" {
#   description = "Route Table private id"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table public id"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_az_block" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "VPC ID"
# }

# Create variable "aws_internet_gateway_id_igw" {
#   description = "Internet Gateway IGW"
# }

# Create variable "aws_route_table_private_id_igw" {
#   description = "Route Table private IGW"
# }

# Create variable "aws_route_table_public_id_igw" {
#   description = "Route Table public IGW"
# }

# Create variable "aws_subnet_subnet_gw_bastion" {
#   description = "CIDR for Subnet Gateway Bastion"
# }

# Create variable "aws_subnet_subnet_gw_bastion_cidr_block" {
#   description = "CIDR for Subnet Gateway Bastion CIDR Block"
# }

# Create variable "aws_subnet_subnet_gw_bastion_az_block" {
#   description = "CIDR for Subnet Gateway Bastion Az Block"
# }

# Create variable "aws_subnet_subnet_gw_bastion_az_block" {
#   description = "CIDR for Subnet Gateway Bastion Az Block"
# }

# Create variable "aws_subnet_subnet_gw_bastion_id" {
#   description = "Subnet for Subnet Gateway Bastion ID"
# }

# Create variable "aws_security_group_bastion_id" {
#   description = "Security group for Bastion"
# }

# Create variable "aws_security_group_bastion_cidr_block" {
#   description = "CIDR for Security group Bastion CIDR Block"
# }

# Create variable "aws_security_group_bastion_az_block" {
#   description = "CIDR for Security group Bastion Az Block
}

