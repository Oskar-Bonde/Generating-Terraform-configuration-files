terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string "ami-0ff8a91507f77f867"
variable "name_0" {
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1#variable "ec2_instance_count" {
#  type = "string"
#}

# variable called ec2_subnet_id which is number type with default 1#variable "ec2_subnet_id" {
#  type = "string"
#}

# variable called ec2_vpc_security_group which is number type with default 1#variable "ec2_vpc_security_group" {
#  type = "string"
#}

# variable called ec2_subnet_public_ip which is number type with default 1#variable "ec2_subnet_public_ip" {
#  type = "string"
#}

# variable called ec2_vpc_security_group_association which is number type with default 1#variable "ec2_vpc_security_group_association" {
#  type = "string"
#}

# variable called ec2_subnet_private_ip which is number type with default 1#variable "ec2_subnet_private_ip" {
#  type = "string"
#}

# variable called ec2_subnet_public_ip_association which is number type with default 1#variable "ec2_subnet_public_ip_association" {
#  type = "string"
#}

# variable called ec2_subnet_private_ip_association which is number type with default 1#variable "ec2_subnet_private_ip_association" {
#  type = "string"
#}

# variable called ec2_subnet_public_ip_association_association which is number type with default 1#variable "ec2_subnet_public_ip_association_association" {
#  type = "string"
#}

# variable called ec2_subnet_private_ip_association_association which is number type with default 1#variable "ec2_subnet_private_ip_association_association" {
#  type = "string"
#}

# variable called ec2_subnet_public_ip_association_association_association which is number type with default 1#variable "ec2_subnet_public_ip_association_association_association" {
#  type = "string"
#}

# variable called ec2_subnet_private_ip_association_association_association which is number type with default 1#variable "ec2_subnet_private_ip_association_association_association" {
#  type = "string"
#}

# variable called ec2_subnet_public_ip_association_association_association_association which is number type with default 1#variable "ec2_subnet_public_ip_association_association_association_association" {
#  type = "string"
#}

# variable called ec2_subnet_private_ip_association_association_association_association which is number type with default 1#variable "ec2_subnet_private_ip_association_association_association_association" {
#  type = "string"
#}

# variable called ec2_
}

# Create EC2 Instance with ami set to var.name_0, count as var.ec2_instance_count and instance type t3.micro
}

