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
#   description = "CIDR block for Internet Gateway"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Public Route Table"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Private Route Table"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR block for AZ"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR block for B"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR block for C"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for AZ"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for AZ"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for B"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for C"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "CIDR block for Internet Gateway"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Private Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Public Route Table"
# }

# Create variable "aws_route_table_private_cidr_block" {
#   description = "CIDR block for Private CIDR block"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a"
}

