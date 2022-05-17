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

# Create variable "aws_ami" {
#   description = "AWS AMI Id, if you change, make sure it is compatible with instance type, not all AMIs allow all instance types "
#   default     = "ami-0ff8a91507f77f867"
# }

# Create variable "aws_instance_type" {
#   description = "AWS instance type, if you change, make sure it is compatible with AMI, not all AMIs allow all instance types "
#   default     = "t2.micro"
# }

# Create variable "aws_key_name" {
#   description = "AWS key pair name"
#   default     = "default"
# }

# Create variable "aws_subnet_id" {
#   description = "AWS subnet id"
#   default     = "subnet-7a1e7e1e"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
#   default     = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
#   default     = "10.0.1.0/24"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR Block for VPC"
#   default     = "vpc-7a1e7e1e"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "CIDR Block for Internet Gateway"
#   default     = "internet-gateway-7a1e7e1e"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR Block for Route Table"
#   default     = "route-table-private-7a1e7e1e"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR Block for Route Table"
#   default     = "route-table-public-7a1e7e1e"
# }

# Create variable "aws_subnet_route_table_association_set" {
#   description = "CIDR Block for subnet route table"
#   default     = "subnet-route-table-association-set-7a1e7e1e"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security group for bastion"
#   default     = "sg-bastion"
# }

# Create variable "aws_security_group_bastion_from_port_22_tcp" {
#   description = "Security group for bastion from port 22 to tcp"
#   default     = "sg-bastion-from-port-22-tcp"
# }

# Create variable "aws_security_group_bastion_from_port_22_udp" {
#   description = "Security group for bastion from port
}

