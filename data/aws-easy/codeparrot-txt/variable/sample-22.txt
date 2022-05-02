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

# Create variable "aws_key_name" {
#   description = "AWS key name"
# }

# Create variable "aws_key_path" {
#   description = "Path to the private key specified by key_name."
# }

# Create variable "aws_key_file" {
#   description = "Path to the public key specified by key_name."
# }

# Create variable "aws_region_azs" {
#   description = "AWS availability zones list separated by ','"
# }

# Create variable "aws_availability_zones_az" {
#   description = "AWS availability zones list separated by ','"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "CIDR block for the Internet Gateway"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for the Private Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for the Public Route Table"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for the Subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for the Subnet"
# }

# Create variable "aws_subnet_subnet_az_az" {
#   description = "CIDR block for the Subnet"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR security groups for the VPC"
# }

# Create variable "aws_internet_security_group_ids" {
#   description = "CIDR security groups for the Internet"
# }

# Create variable "aws_route_table_private_access" {
#   description = "CIDR block for the Private Route Table"
# }

# Create variable "aws_route_table_public_access" {
#   description = "CIDR block for the Public Route Table"
# }

# Create variable "aws_subnet_route_table_association" {
#   description = "CIDR block for the Route Table"
# }

# Create variable "aws_security_group_rule_ids" {
#   description = "CIDR security groups for the security group"
# }

# Create variable "aws_security_group_id" {
#   description = "CIDR security groups for the security group"
# }

# Create variable "aws_security_group_name
}

