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

# Create variable "aws_subnet_subnet_map_public_id" {
#   description = "Subnet map public ID"
# }

# Create variable "aws_subnet_subnet_map_private_id" {
#   description = "Subnet map private ID"
# }

# Create variable "aws_security_group" {
#   description = "Security group for the VPC"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "Security group rule id"
# }

# Create variable "aws_security_group_rule_priority" {
#   description = "Security group rule priority"
# }

# Create variable "aws_security_group_rule_action" {
#   description = "Security group rule action"
# }

# Create variable "aws_security_group_rule_direction" {
#   description = "Security group rule direction"
# }

# Create variable "aws_security_group_rule_source_security_group_id" {
#   description = "Security group rule source security group id"
# }

# Create variable "aws_security_group_rule_source_security_group_cidr_blocks" {
#   description = "CIDR blocks for source security group"
# }

# Create variable "aws_security_group_rule_source_security_group_public_id" {
#   description = "Security group rule source security group id"
# }

# Create variable "aws_security_group_rule_source_security_group_private_id" {
#   description = "Security group rule source security group id"
# }

# Create variable "aws_security_group_rule_source_security_group_cidr_blocks" {
#   description = "CIDR blocks for source security group"
# }

# Create variable "aws_security_group_rule_source_security_group_cidr_blocks_cidr_block" {
#  
}

