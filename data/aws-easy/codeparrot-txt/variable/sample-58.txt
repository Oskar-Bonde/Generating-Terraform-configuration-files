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
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_subnet_route_table_association_set_id" {
#   description = "CIDR block for subnet route table"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_id" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_name" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_owner_id" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_subnet_ids" {
#   description = "CIDR block for bastion"
# }

# Create variable "aws_security_group_bastion_vpc_id" {
#   description = "CIDR block for bastion"
# }

# Create variable "aws_security_group_bastion_owner_id" {
#   description = "Security group for bastion"
# }

# Create variable "aws_security_group_bastion_subnet_ids" {
#   description = "CIDR block for bastion"
# }

# Create variable "aws_security_group_masters_role_arn" {
#   description = "ARN of the IAM role for masters"
# }

# Create variable "aws_security_group_masters_role_name" {
#   description = "Name of the IAM role for masters"
# }

# Create variable "aws_security_group_nodes_role_arn" {
#   description = "ARN of the IAM role for nodes"
# }

# Create variable "aws_security_group_nodes_role_name" {
#   description = "Name of the IAM role for nodes"
# }

# Create variable "aws_security_group_nodes_
}

