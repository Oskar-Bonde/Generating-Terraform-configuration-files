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
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private route table id"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public route table id"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az_az_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_security_group_default_id" {
#   description = "Default security group for the VPC"
# }

# Create variable "aws_security_group_admin_id" {
#   description = "Administrative security group for the VPC"
# }

# Create variable "aws_security_group_default_name" {
#   description = "Default security group name for the VPC"
# }

# Create variable "aws_security_group_admin_name" {
#   description = "Administrative security group name for the VPC"
# }

# Create variable "aws_security_group_tcp_ports" {
#   description = "Ports open from security group for the VPC"
# }

# Create variable "aws_security_group_udp_ports" {
#   description = "Ports open from security group for the VPC"
# }

# Create variable "aws_security_group_cidr_blocks" {
#   description = "CIDR blocks for the VPC"
# }

# Create variable "aws_security_group_subnet_cidr_blocks" {
#   description = "CIDR blocks for the subnet"
# }

# Create variable "aws_security_group_subnet_az_blocks" {
#   description = "CIDR blocks for the subnet"
# }

# Create variable "aws_security_group_subnet_az_az_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_security_group_security_group_id" {
#   description = "Security group id for the VPC"
# }

# Create variable "aws_security_group_vpc_id" {
#   description = "VPC id for the VPC"
# }

# Create variable "aws_security_group_vpc_cidr_block" {
#   description = "CIDR block for the VPC"
# }

}

