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
#   default = "xxxx"
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
#   default = "xxxx"
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
#   default = "10.0.1.0/24"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of VPC"
#   default = "TF-VPC"
# }

# Create variable "aws_subnet_az1" {
#   description = "CIDR block for AZ1"
#   default = "10.0.0.0/24"
# }

# Create variable "aws_subnet_az2" {
#   description = "CIDR block for AZ2"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_subnet_az3" {
#   description = "CIDR block for AZ3"
#   default = "10.0.2.0/24"
# }

# Create variable "aws_subnet_az4" {
#   description = "CIDR block for AZ4"
#   default = "10.0.3.0/24"
# }

# Create variable "aws_subnet_az5" {
#   description = "CIDR block for AZ5"
#   default = "10.0.4.0/24"
# }

# Create variable "aws_subnet_az6" {
#   description = "CIDR block for AZ6"
#   default = "10.0.5.0/24"
# }

# Create variable "aws_subnet_az7" {
#   description = "CIDR block for AZ7"
#   default = "10.0.6.0/24"
# }

# Create variable "aws_subnet_az8" {
#   description = "CIDR block for AZ8"
#   default = "10.0.7.0/24"
# }

# Create variable "aws_subnet_az9" {
#   description = "CIDR block for AZ9"
#   default = "10.0.8.0/24"
# }

# Create variable "aws_subnet_az10" {
#   description = "CIDR block for AZ10"
#   default = "10.0.9.0/24"
# }

# Create variable "aws_subnet_az11" {
#   description = "CIDR block for AZ11"
#   default = "10.0.10.0/24"
# }

# Create variable "aws_
}

