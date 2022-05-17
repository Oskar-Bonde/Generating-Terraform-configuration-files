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

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_ip" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_boot_id" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_priv_ip" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_priv_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_priv_boot_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_priv_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR security groups IDs"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "CIDR block for Internet Gateway"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "CIDR security group rule ID"
# }

# Create variable "aws_security_group_rule_cidr_block" {
#   description = "CIDR block for security group rule
}

