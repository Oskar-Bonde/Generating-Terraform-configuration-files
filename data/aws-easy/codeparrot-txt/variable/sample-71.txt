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

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
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

# Create variable "aws_security_group" {
#   description = "CIDR security groups"
# }

# Create variable "aws_subnet_ids" {
#   description = "CIDR security groups"
# }

# Create variable "aws_subnet_availability_zones" {
#   description = "CIDR availability zones list separated by ','"
# }

# Create variable "aws_vpc_subnet_cidrs" {
#   description = "CIDR availability zones list separated by ','"
# }

# Create variable "aws_internet_gateway_cidrs" {
#   description = "CIDR availability zones list separated by ','"
# }

# Create variable "aws_route_table_private_cidrs" {
#   description = "CIDR block for Route Table Private IDs"
# }

# Create variable "aws_route_table_public_cidrs" {
#   description = "CIDR block for Route Table Public IDs"
# }

# Create variable "aws_subnet_route_table_ids" {
#   description = "CIDR block for Route Table IDs"
# }

# Create variable "aws_security_group_ids" {
#   description = "CIDR security groups IDs"
# }

# Create variable "aws_security_group" {
#   description = "CIDR security groups"
# }

# Create variable "aws_vpc_route_table_ids" {
#   description = "CIDR route table IDs"
# }

# Create variable "aws_route_table_availability_zones" {
#   description = "CIDR availability zones list separated by ','"
# }

# Create variable "aws_subnet_route
}

