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
#   description = "AWS key path"
#   default     = "default"
# }

# Create variable "aws_key_file" {
#   description = "AWS key file"
#   default     = "default"
# }

# Create variable "aws_region_azs" {
#   description = "AWS availability zones list separated by ','"
#   default     = "us-east-1a,us-east-1b"
# }

# Create variable "aws_availability_zones_az" {
#   description = "AWS availability zones list separated by ','"
#   default     = "us-east-1a,us-east-1b"
# }

# Create variable "aws_subnet_azs" {
#   description = "AWS availability zones list separated by ','"
#   default     = "us-east-1a,us-east-1b"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
#   default     = "10.0.0.0/16"
# }

# Create variable "aws_subnet_azs_count" {
#   description = "Number of availability zones in AZ"
#   default     = "2"
# }

# Create variable "aws_subnet_azs_type" {
#   description = "AWS availability zones type"
#   default     = "Private"
# }

# Create variable "aws_vpc_cidr_block_type" {
#   description = "CIDR Block for VPC"
#   default     = "VpcCIDR"
# }

# Create variable "aws_subnet_azs_count" {
#   description = "Number of availability zones in AZ"
#   default     = "2"
# }

# Create variable "aws_subnet_azs_type" {
#   description = "AWS availability zones type"
#   default     = "Private"
# }

# Create variable "aws_vpc_cidr_block_type" {
#   description = "CIDR Block for VPC"
#   default     = "VpcCIDR"
# }

# Create variable "aws_subnet_azs_count" {
#   description = "Number of availability zones in AZ"
#   default     = "2"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
#   default     = "igw-1"
# }

# Create variable "aws_route_table_public_id" {
#   description = "Route Table Public Id"
#   default     = "rtb-1"
# }

# Create variable "aws_route_table_private_id" {
#   description = "Route Table Private Id"
#   default     = "rtb-
}

