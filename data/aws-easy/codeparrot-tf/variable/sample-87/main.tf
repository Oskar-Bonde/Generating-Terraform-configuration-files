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

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_id_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_security_group" {
#   description = "AWS security group"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of VPC"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_id_public" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_subnet_id_public" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_security_group" {
#   description = "AWS security group"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_private_cidr_block" {
#   description = "CIDR block for private subnets"
# }

# Create variable "aws_route_table_public_cidr_block" {
#   description = "CIDR block for public subnets"
# }

# Create variable "aws_route_table_private_az_block" {
#   description = "CIDR block for private subnets"
# }

# Create variable "aws_subnet_route_table_association" {
#   description = "CIDR block for public subnets"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "AWS security group rule id"
# }

# Create variable "aws_security_group_rule_cidr_block" {
#
}

