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
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private Route Table ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public Route Table ID"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR block for AZ1"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR block for AZ2"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR block for AZ3"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for AZ4"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for AZ5"
# }

# Create variable "aws_vpc_id" {
#   description = "AWS ID"
# }

# Create variable "aws_internet_gateway_id_igw" {
#   description = "IGW for Internet Gateway"
# }

# Create variable "aws_route_table_private_id_igw" {
#   description = "Private Route Table ID"
# }

# Create variable "aws_route_table_public_id_igw" {
#   description = "Public Route Table ID"
# }

# Create variable "aws_subnet_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_a_b" {
#   description = "CIDR block for AZ1"
# }

# Create variable "aws_subnet_subnet_az_b_c" {
#   description = "CIDR block for AZ2"
# }

# Create variable "aws_subnet_subnet_az_b_az_c" {
#   description = "CIDR block for AZ3"
# }

# Create variable "aws_subnet_subnet_az_c_az_b" {
#   description = "CIDR block for AZ4"
# }

# Create variable "aws_subnet_subnet_az_az_az_b_c" {
#   description = "CIDR block for AZ5
}

