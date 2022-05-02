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

# Create variable "aws_region" {
#   default = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   default = "us-east-1a,us-east-1b"
# }

# Create variable "aws_key_name" {
#   default = "default"
# }

# Create variable "aws_key_path" {
#   default = "/home/ubuntu/.ssh/id_rsa.pub"
# }

# Create variable "aws_key_path_public" {
#   default = "/home/ubuntu/.ssh/id_rsa"
# }

# Create variable "aws_vpc_cidr_block" {
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   default = "10.0.1.0/24"
# }

# Create variable "aws_vpc_id" {
#   default = "vpc-xxxxxx"
# }

# Create variable "aws_subnet_id_public" {
#   default = "subnet-xxxxxx"
# }

# Create variable "aws_subnet_id_private" {
#   default = "subnet-xxxxxx"
# }

# Create variable "aws_vpc_cidr_block_public" {
#   default = "10.0.2.0/24"
# }

# Create variable "aws_subnet_cidr_block_private" {
#   default = "10.0.3.0/24"
# }

# Create variable "aws_internet_gateway_id" {
#   default = "igw-xxxxxx"
# }

# Create variable "aws_route_table_public" {
#   default = "rtb-xxxxxx"
# }

# Create variable "aws_route_table_private" {
#   default = "rtb-xxxxxx"
# }

# Create variable "aws_subnet_route_table_public" {
#   default = "subnet-xxxxxx"
# }

# Create variable "aws_subnet_route_table_private" {
#   default = "subnet-xxxxxx"
# }

# Create variable "aws_security_group_bastion" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_cassandra" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_tcp" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_udp" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_icmp" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_esp" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_udp_1" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_udp_2" {
#   default = "sg-xxxxxx"
# }

# Create variable "aws_security_group_tcp_1" {
#   default = "sg-xxxxxx"
# }

# Create variable "
}

