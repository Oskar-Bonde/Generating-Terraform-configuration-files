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
#   description = "Public route table id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private route table id"
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

# Create variable "aws_internet_security_group_id" {
#   description = "Internet security group IDs"
# }

# Create variable "aws_route_table_private_owner_id" {
#   description = "Private route table id"
# }

# Create variable "aws_route_table_public_owner_id" {
#   description = "Public route table id"
# }

# Create variable "aws_security_group" {
#   description = "CIDR security groups"
# }

# Create variable "aws_security_group_id" {
#   description = "CIDR security groups"
# }

# Create variable "aws_subnet_ids" {
#   description = "CIDR security groups"
# }

# Create variable "aws_vpc_route_table_ids" {
#   description = "CIDR route table IDs"
# }

# Create variable "aws_route_table_private_ids" {
#   description = "Private route table ids"
# }

# Create variable "aws_route_table_public_ids" {
#   description = "Public route table ids"
# }

# Create variable "aws_security_group_rule_ids" {
#   description = "CIDR security group rules"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "CIDR security group rule"
# }

# Create variable "aws_security_group_rule_cidr_blocks" {
#   description = "CIDR security group rules"
# }

# Create variable "aws_security_group_rule_from_port" {
#   description = "CIDR security group rule"
# }

# Create variable "aws_security_group_rule_to_port" {
#  
}

