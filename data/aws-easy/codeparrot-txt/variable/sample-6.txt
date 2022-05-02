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
#   default = ""
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
#   default = ""
# }

# Create variable "aws_region" {
#   description = "AWS region"
#   default = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
#   default = ""
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
#   default = "10.0.0.0/24"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of VPC"
#   default = "vpc"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default = ""
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table private id"
#   default = ""
# }

# Create variable "aws_subnet_route_table_public_id" {
#   description = "Subnet route table public id"
#   default = ""
# }

# Create variable "aws_security_group_ids" {
#   description = "Security group Ids"
#   default = ""
# }

# Create variable "aws_subnet_ids" {
#   description = "Subnets Ids"
#   default = ""
# }

# Create variable "aws_vpc_public_subnets_count" {
#   description = "Number of public subnets"
#   default = "2"
# }

# Create variable "aws_subnet_availability_zones" {
#   description = "Availability zones list separated by ','"
#   default = ""
# }

# Create variable "aws_subnet_cidrs" {
#   description = "CIDR blocks for subnets"
#   default = "10.0.0.0/24,10.0.1.0/24"
# }

# Create variable "aws_internet_gateway_ids" {
#   description = "Internet Gateway ids"
#   default = ""
# }

# Create variable "aws_route_table_public_ids" {
#   description = "Route table public ids"
#   default = ""
# }

# Create variable "aws_subnet_route_table_private_ids" {
#   description = "Subnet route table private ids"
#   default = ""
# }

# Create variable "aws_security_group_ids" {
#   description = "Security group Ids"
#   default = ""
# }

# Create variable "aws_subnet_ids" {
#   description = "Subnets Ids"
#   default = ""
# }

# Create variable "aws_vpc_public_subnets_cidr_block" {
#   description = "CIDR Block for public subnets"
#   default = "10.0.0.0/16"
# }

# Create variable "
}

