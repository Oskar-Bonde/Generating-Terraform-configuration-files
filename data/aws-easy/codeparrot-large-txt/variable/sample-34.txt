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
#   description = "Route Table public id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table private id"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for subnet"
# }

# Create variable "aws_subnet_subnet_az_a" {
#   description = "CIDR block for subnet A"
# }

# Create variable "aws_subnet_subnet_az_b" {
#   description = "CIDR block for subnet B"
# }

# Create variable "aws_subnet_subnet_az_c" {
#   description = "CIDR block for subnet C"
# }

# Create variable "aws_subnet_subnet_az_az_b" {
#   description = "CIDR block for subnet B"
# }

# Create variable "aws_subnet_subnet_az_az_c" {
#   description = "CIDR block for subnet C"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_from_port_22_tcp" {
#   description = "Security group for bastion from port 22 to tcp"
# }

# Create variable "aws_security_group_bastion_from_port_22_udp" {
#   description = "Security group for bastion from port 22 to udp"
# }

# Create variable "aws_security_group_bastion_from_port_443_tcp" {
#   description = "Security group for bastion from port 443 to tcp"
# }

# Create variable "aws_security_group_bastion_from_port_443_udp" {
#   description = "Security group for bastion from port 443 to udp"
# }

# Create variable "aws_security_group_bastion_from_port_4646_tcp" {
#   description = "Security group for bastion from port 4646 to tcp"
# }

# Create variable "aws_security_group_bastion_from_port_4646_udp" {
#   description = "Security group for bastion from port 4646 to udp"
# }

# Create variable "aws_security_
}

