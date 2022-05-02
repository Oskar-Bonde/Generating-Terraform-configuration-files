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

# Create variable "aws_route_table_private_id" {
#   description = "Route Table private id"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table public id"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az1" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az2" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az3" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az4" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_vpc_cidr_block_az1" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_block_az2" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_block_az3" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_subnet_az4" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_subnet_subnet_az5" {
#   description = "CIDR block for the subnet"
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

# Create variable "aws_subnet_route_table_public_id" {
#   description = "Route Table public id"
# }

# Create variable "aws_security_group_rule_id" {
#   description = "Security Group rule id"
# }

# Create variable "aws_security_group_rule_cidr_block" {
#   description = "CIDR block for the security group rule"
# }

# Create variable "
}

