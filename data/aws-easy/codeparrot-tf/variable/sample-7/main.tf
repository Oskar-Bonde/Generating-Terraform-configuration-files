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

# Create variable "aws_key_name" {
#   description = "AWS key name"
# }

# Create variable "aws_key_path" {
#   description = "Path to the private key specified by key_name."
# }

# Create variable "aws_key_file_path" {
#   description = "Path to the public key specified by key_name."
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_id" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_public_subnets_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_public_subnets_ids_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_security_group" {
#   description = "CIDR security group"
# }

# Create variable "aws_vpc_cidr_subnets_private" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_public" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_private_cidr" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_public_cidr" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_private_cidr" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_public_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_private_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_vpc_cidr_subnets_public_cidr_block" {
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_internet_gateway_id" {
#  
}

