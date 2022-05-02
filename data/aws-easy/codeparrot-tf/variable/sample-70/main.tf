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
#   default = "xxxxxx"
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
#   default = "xxxxxx"
# }

# Create variable "aws_region" {
#   description = "AWS region"
#   default = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
#   default = "us-east-1a,us-east-1b"
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
#   default = "vpc-us-east-1a"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway ID"
#   default = "vpc-us-east-1a"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public ID"
#   default = "rtb-pub-1"
# }

# Create variable "aws_subnet_route_table_public_id" {
#   description = "Subnet Route Table Public ID"
#   default = "rtb-pub-1"
# }

# Create variable "aws_security_group_bastion" {
#   description = "Security Group for Bastion"
#   default = "sg-bastion"
# }

# Create variable "aws_security_group_ssh" {
#   description = "Security Group for SSH"
#   default = "sg-ssh"
# }

# Create variable "aws_security_group_general" {
#   description = "Security Group for General"
#   default = "sg-general"
# }

# Create variable "aws_security_group_ssh_bastion" {
#   description = "Security Group for SSH bastion"
#   default = "sg-bastion"
# }

# Create variable "aws_security_group_general_bastion" {
#   description = "Security Group for General bastion"
#   default = "sg-general"
# }

# Create variable "aws_security_group_ssh_bastion_bastion_id" {
#   description = "Security Group for SSH bastion bastion id"
#   default = "sg-bastion-bastion-id"
# }

# Create variable "aws_security_group_general_bastion_id" {
#   description = "Security Group for General bastion bastion id"
#   default = "sg-bastion-bastion-id"
# }

# Create variable "aws_security_group_ssh_bastion_bastion_id" {
#   description = "Security Group for SSH bastion bastion id"

}

