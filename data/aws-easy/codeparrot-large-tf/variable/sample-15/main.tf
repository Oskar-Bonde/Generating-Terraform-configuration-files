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

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Public Route Table ID"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Private Route Table ID"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_id" {
#   description = "CIDR Block for Subnet"
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

# Create variable "aws_security_group_udp_self" {
#   description = "UDP security group"
# }

# Create variable "aws_security_group_tcp_self" {
#   description = "TCP security group"
# }

# Create variable "aws_security_group_udp_self" {
#   description = "UDP security group"
# }

# Create variable "aws_security_group_icmp_self" {
#   description = "ICMP security group"
# }

# Create variable "aws_security_group_esp_self" {
#   description = "ESC security group"
# }

# Create variable "aws_security_group_udp_self" {
#   description = "UDP security group"
# }

# Create variable "aws_security_group_esp_self" {
#   description = "ESC security group"
# }

# Create variable "aws_security_group_udp_self" {
#   description = "UDP security group"
# }

# Create variable "aws_security_group_esp_self" {
#   description = "ESC security group"
# }

# Create variable "
}

