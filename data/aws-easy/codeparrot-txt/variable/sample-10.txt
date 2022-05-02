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
#   description = "AWS region"
#   default     = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
#   default     = "us-east-1a,us-east-1b"
# }

# Create variable "aws_key_name" {
#   description = "AWS key pair name"
#   default     = "default"
# }

# Create variable "aws_key_path" {
#   description = "Path to the private key specified by key_name."
#   default     = "~/.ssh/id_rsa.pub"
# }

# Create variable "aws_key_path_public" {
#   description = "Path to the public key specified by key_name."
#   default     = "~/.ssh/id_rsa"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for the VPC"
#   default     = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
#   default     = "10.0.1.0/24"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of the VPC"
#   default     = "vpc"
# }

# Create variable "aws_vpc_cidr_block_public" {
#   description = "CIDR block for the VPC"
#   default     = "10.0.101.0/24"
# }

# Create variable "aws_subnet_cidr_block_public" {
#   description = "CIDR block for the subnet"
#   default     = "10.0.102.0/24"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default     = "igw-1"
# }

# Create variable "aws_route_table_public" {
#   description = "Route table public"
#   default     = "public"
# }

# Create variable "aws_route_table_private" {
#   description = "Route table private"
#   default     = "private"
# }

# Create variable "aws_subnet_route_table_public" {
#   description = "Route table public"
#   default     = "public"
# }

# Create variable "aws_subnet_route_table_private" {
#   description = "Route table private"
#   default     = "private"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security group for bastion"
#   default     = "sg-bastion"
# }

# Create variable "aws_security_group_ssh" {
#   description = "Security group for SSH"
#   default     = "sg-ssh"
# }

# Create variable "aws_security_group_general" {
#   description = "Security group for general purpose"
#   default     = "sg-general"
# }

# Create variable "aws_security_group_ssh_bastion" {
#   description = "Security group for SSH bastion"
#  
}

