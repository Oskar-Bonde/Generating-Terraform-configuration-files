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

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
# }

# Create variable "aws_subnet_route_table_public_id" {
#   description = "Subnet Route Table Public ID"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security Group for Bastion"
# }

# Create variable "aws_security_group_cassandra" {
#   description = "Security Group for Cassandra"
# }

# Create variable "aws_security_group_tcp_all" {
#   description = "Security Group for TCP All"
# }

# Create variable "aws_security_group_udp_all" {
#   description = "Security Group for UDP All"
# }

# Create variable "aws_security_group_icmp" {
#   description = "Security Group for ICMP"
# }

# Create variable "aws_security_group_esp" {
#   description = "Security Group for ESP"
# }

# Create variable "aws_security_group_udp_all" {
#   description = "Security Group for UDP All"
# }

# Create variable "aws_security_group_esp_udp_all" {
#   description = "Security Group for ESP UDP All"
# }

# Create variable "aws_security_group_udp_all_udp" {
#   description = "Security Group for UDP All"
# }

# Create variable "aws_security_group_udp_all_icmp" {
#   description = "Security Group for ICMP"
# }

# Create variable "aws_security_group_esp_esp_udp_all" {
#   description = "Security Group for ESP UDP All"
# }

# Create variable "aws_security_group_udp_all_icmp" {
#   description = "Security Group for ICMP"
# }

# Create variable "aws_security_group_esp_udp_all_esp" {
#   description = "Security Group for ESP UDP All"
# }

# Create variable "aws_security_group_udp_all_udp_all" {
#   description = "Security Group for UDP All"
# }

# Create variable "aws_security_group_udp_all_icmp" {
#   description = "Security Group for ICMP"
# }

# Create variable "aws_security_group_esp_udp_all_esp_udp" {
#   description = "Security Group for ESP UDP"
# }

#
}

