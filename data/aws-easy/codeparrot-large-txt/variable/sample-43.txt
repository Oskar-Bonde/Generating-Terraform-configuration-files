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
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_subnet_id" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway for AWS"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public Route Table"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private Route Table"
# }

# Create variable "aws_subnet_route_table_association_set_id" {
#   description = "Route Table Association Set"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Bastion security group"
# }

# Create variable "aws_security_group_bastion_id" {
#   description = "Security Group for Bastion"
# }

# Create variable "aws_security_group_bastion_name" {
#   description = "Security Group for Bastion"
# }

# Create variable "aws_security_group_bastion_description" {
#   description = "Security Group for Bastion"
# }

# Create variable "aws_security_group_bastion_ingress_cidr_blocks" {
#   description = "CIDR Blocks for ingress"
# }

# Create variable "aws_security_group_bastion_ingress_ports" {
#   description = "Ports for ingress"
# }

# Create variable "aws_security_group_bastion_protocol" {
#   description = "Protocol for ingress"
# }

# Create variable "aws_security_group_bastion_source_security_group_id" {
#   description = "Security Group for bastion"
# }

# Create variable "aws_security_group_bastion_source_security_group_owner_id" {
#   description = "Security Group for bastion"
# }

# Create variable "aws_security_group_bastion_source_security_group_arn" {
#   description = "Security Group for bastion"
# }

# Create variable "aws_security_group_bastion_subnet_ids" {
#   description = "Subnets for bastion"
# }

# Create variable "aws_security_group_bastion_tags" {
#   description = "Tags for bastion"
# }

# Create variable "aws_security_group_bastion_type" {
}

