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

# Create variable "aws_vpc_cidr_block_az1" {
#   description = "CIDR block for az1"
# }

# Create variable "aws_subnet_cidr_block_az2" {
#   description = "CIDR block for az2"
# }

# Create variable "aws_subnet_cidr_block_az3" {
#   description = "CIDR block for az3"
# }

# Create variable "aws_subnet_cidr_block_az4" {
#   description = "CIDR block for az4"
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

# Create variable "aws_security_group_default_id" {
#   description = "Security group default id"
# }

# Create variable "aws_security_group_admin_id" {
#   description = "Security group admin id"
# }

# Create variable "aws_security_group_consul_id" {
#   description = "Security group consul id"
# }

# Create variable "aws_security_group_web_id" {
#   description = "Security group web id"
# }

# Create variable "aws_security_group_ssh_id" {
#   description = "Security group ssh id"
# }

# Create variable "aws_security_group_web_sg_id" {
#   description = "Security group web security group id"
# }

# Create variable "aws_security_group_consul_sg_id" {
#   description = "Security group consul security group id"
# }

# Create variable "aws_security_group_ssh_sg_id" {
#   description = "Security group ssh security group id"
# }

# Create variable "aws_security_group_web_sg_id" {
#   description = "Security group web security group id"
# }

# Create variable "aws_security_group_consul_sg_id" {
#   description = "Security group consul security group id"
# }

# Create variable "aws_security_group_web_sg_id_2" {
#
}

