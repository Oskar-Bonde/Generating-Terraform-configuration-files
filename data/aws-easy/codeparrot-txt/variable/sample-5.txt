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
#   default = ""
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
#   default = ""
# }

# Create variable "aws_region" {
#   description = "AWS region"
#   default = "us-east-1"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
#   default = ""
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR block for VPC"
#   default = "10.0.0.0/16"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_ubuntu_ami" {
#   description = "Ubuntu AMI for EC2 instances"
#   default = {
#     us-east-1 = "ami-d05e75b8"
#     us-west-1 = "ami-d05e75b8"
#     us-west-2 = "ami-d05e75b8"
#     ap-northeast-1 = "ami-d05e75b8"
#     ap-southeast-1 = "ami-d05e75b8"
#     ap-southeast-2 = "ami-d05e75b8"
#     eu-west-1 = "ami-d05e75b8"
#     eu-west-2 = "ami-d05e75b8"
#     sa-east-1 = "ami-d05e75b8"
#     us-east-1 = "ami-d05e75b8"
#     us-west-1 = "ami-d05e75b8"
#     us-west-2 = "ami-d05e75b8"
#     ap-northeast-1 = "ami-d05e75b8"
#     ap-southeast-1 = "ami-d05e75b8"
#     ap-southeast-2 = "ami-d05e75b8"
#     eu-west-1 = "ami-d05e75b8"
#     eu-west-2 = "ami-d05e75b8"
#     sa-east-1 = "ami-d05e75b8"
#     us-east-1 = "ami-d05e75b8"
#     us-west-1 = "ami-d05e75b8"
#     us-west-2 = "ami-d05e75b8"
#     ap-northeast-1 = "ami-d05e75b8"
#     ap-southeast-1 = "ami-d05e75b8"
#     ap-southeast-2 = "ami-d05e75b8"
#     eu-west-1 = "ami-d05e75b8"
#     eu-west-2 = "ami-d05e75b8"
#     sa-east-1 = "ami-d05e75b8"
#     us-east-1 = "ami-d05e75
}

