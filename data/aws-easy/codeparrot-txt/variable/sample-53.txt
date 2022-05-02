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

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Private Subnet"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Public Subnet"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_id" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Bastion security group"
# }

# Create variable "aws_security_group_cassandra" {
#   description = "Cassandra security group"
# }

# Create variable "aws_security_group_tcp" {
#   description = "Cassandra security group"
# }

# Create variable "aws_security_group_udp" {
#   description = "Cassandra security group"
# }

# Create variable "aws_security_group_icmp" {
#   description = "ICMP security group"
# }

# Create variable "aws_security_group_esp" {
#   description = "ESC security group"
# }

# Create variable "aws_security_group_udp_echo" {
#   description = "Echo security group"
# }

# Create variable "aws_security_group_ssh" {
#   description = "SSH security group"
# }

# Create variable "aws_security_group_web" {
#   description = "Web security group"
# }

# Create variable "aws_security_group_outbound" {
#   description = "Outbound security group"
# }

# Create variable "aws_security_group_protocol" {
#   description = "Protocol security group"
# }

# Create variable "aws_security_group_type" {
#   description = "Type of security group"
# }

# Create variable "aws_security_group_zone_id" {
#   description = "Zone id of security group"
# }

# Create variable "aws_security_group_type_multi" {
#   description = "Multi security group"
# }

# Create variable "aws_security_group_type_ip" {
#   description = "IP security group"
# }

# Create variable "aws_security_group
}

