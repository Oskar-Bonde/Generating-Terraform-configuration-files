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

# Create variable "aws_subnet_id" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
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

# Create variable "aws_security_group_rule_id" {
#   description = "Security Group Rule ID"
# }

# Create variable "aws_security_group_rule_cidr_block" {
#   description = "CIDR Block for CIDR Block"
# }

# Create variable "aws_security_group_rule_from_port_range" {
#   description = "CIDR Block for from_port_range"
# }

# Create variable "aws_security_group_rule_to_port_range" {
#   description = "CIDR Block for to_port_range"
# }

# Create variable "aws_security_group_rule_protocol" {
#   description = "CIDR Block for protocol"
# }

# Create variable "aws_security_group_rule_to_port_range" {
#   description = "CIDR Block for to_port_range"
# }

# Create variable "aws_security_group_rule_cidr_blocks" {
#   description = "CIDR Blocks for CIDR Blocks"
# }

# Create variable "aws_security_group_rule_ipv4_cidr_blocks" {
#   description = "CIDR Blocks for IPv4 CIDR Blocks"
# }

# Create variable "aws_security_group_rule_ipv6_cidr_blocks" {
#   description = "CIDR Blocks for IPv6 CIDR Blocks"
# }

# Create variable "aws_security_group_rule_ipv4_cidr_blocks_cidr_block" {
#   description = "CIDR Blocks for IPv4 CIDR Blocks CIDR Block"
# }

# Create variable "aws_security_group_rule_ipv6_cidr_blocks_cidr_block" {
#   description = "CIDR Blocks for IPv6 CIDR Blocks CIDR Block"
# }

# Create variable "aws_security_group_rule_ipv4_cidr_blocks_ipv
}

