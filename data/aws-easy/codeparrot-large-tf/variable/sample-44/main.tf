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
#   default = "xxxxx"
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
#   default = "xxxx"
# }

# Create variable "aws_region" {
#   description = "AWS region"
#   default = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
#   default = "us-east-1a,us-east-1b"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of VPC"
#   default = "vpc-1"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default = "igw-1"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private route table id"
#   default = "rtb-1"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public route table id"
#   default = "rtb-1"
# }

# Create variable "aws_subnet_route_table_association_set" {
#   description = "Route table association set"
#   default = "rtb-1"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "Security group rule id"
#   default = "sg-1"
# }

# Create variable "aws_security_group_rule_priority" {
#   description = "Security group rule priority"
#   default = "1"
# }

# Create variable "aws_security_group_rule_action" {
#   description = "Security group rule action"
#   default = "allow"
# }

# Create variable "aws_security_group_rule_direction" {
#   description = "Security group rule direction"
#   default = "Inbound"
# }

# Create variable "aws_security_group_rule_source_security_group_id" {
#   description = "Security group rule source security group id"
#   default = "sg-1"
# }

# Create variable "aws_security_group_rule_source_security_group_owner_id" {
#   description = "Security group rule source security group owner id"
#   default = "sg-1"
# }

# Create variable "aws_security_group_rule_source_security_group_group_id" {
#   description = "Security group rule source security group group id"
#   default = "sg-2"
# }

# Create variable "aws_security_group_rule_type" {
#   description = "Security group rule type"
#   default = "ingress"
# }

# Create
}

