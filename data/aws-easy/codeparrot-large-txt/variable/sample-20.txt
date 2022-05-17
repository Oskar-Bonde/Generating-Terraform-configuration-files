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

# Create variable "aws_route_table_public_id" {
#   description = "Public route table id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private route table id"
# }

# Create variable "aws_subnet_route_table_association_set_id" {
#   description = "Route table association set id"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Bastion security group"
# }

# Create variable "aws_security_group_bastion_id" {
#   description = "Security group bastion id"
# }

# Create variable "aws_security_group_bastion_name" {
#   description = "Security group bastion name"
# }

# Create variable "aws_security_group_bastion_owner_id" {
#   description = "Security group bastion owner id"
# }

# Create variable "aws_security_group_bastion_subnet_ids" {
#   description = "Security group bastion subnet ids"
# }

# Create variable "aws_security_group_bastion_vpc_id" {
#   description = "Security group bastion vpc id"
# }

# Create variable "aws_security_group_bastion_owner_id" {
#   description = "Security group bastion owner id"
# }

# Create variable "aws_security_group_bastion_subnet_ids" {
#   description = "Security group bastion subnet ids"
# }

# Create variable "aws_security_group_masters_id" {
#   description = "Security group masters id"
# }

# Create variable "aws_security_group_masters_name" {
#   description = "Security group masters name"
# }

# Create variable "aws_security_group_masters_owner_id" {
#   description = "Security group masters owner id"
# }

# Create variable "aws_security_group_masters_subnet_ids" {
#   description = "Security group masters subnet ids"
# }

# Create variable "aws_security_group_nodes_id" {
#   description = "Security group nodes id"

}

