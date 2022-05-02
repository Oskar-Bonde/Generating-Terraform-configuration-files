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
#   default = "tf-vpc"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default = ""
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
#   default = ""
# }

# Create variable "aws_subnet_route_table_id" {
#   description = "Subnet Route Table ID"
#   default = ""
# }

# Create variable "aws_security_group_ids" {
#   description = "Security Groups IDs which will be attached to the EC2 instances"
#   default = ""
# }

# Create variable "aws_subnet_ids" {
#   description = "Subnets IDs which will be attached to the EC2 instances"
#   default = ""
# }

# Create variable "aws_internet_security_group_ids" {
#   description = "Security Groups IDs which will be attached to the Internet"
#   default = ""
# }

# Create variable "aws_security_group" {
#   description = "Security Group"
#   default = "default"
# }

# Create variable "aws_key_name" {
#   description = "Name of the SSH keypair to use in AWS."
#   default = ""
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default = ""
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
#   default = ""
# }

# Create variable "aws_subnet_route_table_private_id" {
#   description = "Subnet Route Table Private ID"
#   default = ""
# }

# Create variable "aws_security_group_ids" {
#   description = "Security Groups IDs which will be attached to the VPC"
#
}

