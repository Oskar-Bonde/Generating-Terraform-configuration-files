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

# Create variable "aws_vpc_name" {
#   description = "Name of the VPC"
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

# Create variable "aws_subnet_route_table_association_set_id" {
#   description = "Subnet Route Table Association Set ID"
# }

# Create variable "aws_subnet_route_table_vpc_id" {
#   description = "Subnet Route Table VPC ID"
# }

# Create variable "aws_subnet_route_table_route_table_association_id" {
#   description = "Subnet Route Table Association ID"
# }

# Create variable "aws_security_group" {
#   description = "Security group for the VPC"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "Security group rule for the VPC"
# }

# Create variable "aws_security_group_rule_protocol" {
#   description = "Security group rule protocol for the VPC"
# }

# Create variable "aws_security_group_rule_source_security_group_id" {
#   description = "Security group rule source security group id"
# }

# Create variable "aws_security_group_rule_type" {
#   description = "Security group rule type for the VPC"
# }

# Create variable "aws_security_group_rule_port_range" {
#   description = "Security group rule port range"
# }

# Create variable "aws_security_group_rule_priority" {
#   description = "Security group rule priority"
# }

# Create variable "aws_security_group_rule_direction" {
#   description = "Security group rule direction"
# }

# Create variable "aws_security_group_rule_access" {
#   description = "Security group rule access"
# }

# Create variable "aws_security_group_rule_priority_type" {
#   description = "Security group rule priority type"
# }

# Create variable "aws_security_group_rule_direction_access" {
#   description = "Security group rule direction access"
# }

# Create variable "aws_security_group_rule_protocol_type" {
#   description = "Security group rule protocol type"
# }

# Create variable "aws_security_group_rule_source
}

