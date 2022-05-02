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
#   description = "CIDR block for subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet gateway id"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public route table id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private route table id"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_security_group" {
#   description = "AWS security group"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "AWS security groups list separated by ','"
# }

# Create variable "aws_subnet_security_group_id" {
#   description = "CIDR security groups list separated by ','"
# }

# Create variable "aws_vpc_subnet_ids" {
#   description = "CIDR security groups list separated by ','"
# }

# Create variable "aws_internet_gateway_ids" {
#   description = "Internet gateways list separated by ','"
# }

# Create variable "aws_route_table_private_ids" {
#   description = "Private route table ids"
# }

# Create variable "aws_route_table_public_ids" {
#   description = "Public route table ids"
# }

# Create variable "aws_route_table_private_ids" {
#   description = "Private route table ids"
# }

# Create variable "aws_security_group_ids" {
#   description = "AWS security groups list separated by ','"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "AWS security groups list separated by ','"
# }

# Create variable "aws_internet_
}

