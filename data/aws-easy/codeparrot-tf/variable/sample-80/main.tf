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

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az1" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az2" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az3" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az4" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az5" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_internet_gateway_id_az1" {
#   description = "Internet Gateway ID for AZ1"
# }

# Create variable "aws_route_table_private_az1" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_route_table_public_az1" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az2" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az3" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az4" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az5" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az6" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az7" {
#   description = "CIDR Block for AZ1"
# }

# Create variable "aws_subnet_az1_az8" {
#   description =
}

