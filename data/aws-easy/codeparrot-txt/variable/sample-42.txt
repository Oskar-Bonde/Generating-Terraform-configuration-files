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
#   description = "CIDR Block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_vpc_name" {
#   description = "CIDR Block for VPC"
#   default = "main"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
#   default = ""
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private ID"
#   default = ""
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
#   default = ""
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
#   default = "10.0.2.0/24"
# }

# Create variable "aws_subnet_subnet_gw_id" {
#   description = "Subnet for Subnet"
#   default = ""
# }

# Create variable "aws_security_group" {
#   description = "Security Group"
#   default = "default"
# }

# Create variable "aws_vpc_security_group_name" {
#   description = "Security Group Name"
#   default = "default"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_subnet_gw_id" {
#   description = "Subnet for Subnet"
#   default = ""
# }

# Create variable "aws_vpc_dns_zone_id" {
#   description = "Route Table DNS Zone ID"
#   default = ""
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_subnet_subnet_gw_id" {
#   description = "Subnet for Subnet"
#   default = ""
# }

# Create variable "aws_security_group_rule_id" {
#   description = "Security Group Rule"
#   default = "tcp"
# }

# Create variable "aws_security_group_rule_priority" {
#   description = "Security Group Rule Priority"
#   default =
}

