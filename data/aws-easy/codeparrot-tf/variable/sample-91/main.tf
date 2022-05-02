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
#   description = "CIDR block for VPC"
#   default = "10.0.1.0/24"
# }

# Create variable "aws_ubuntu_ami" {
#   description = "Default Ubuntu AMI for AMI selection"
#   default = {
#     us-east-1 = "ami-e7527ed7"
#     us-west-1 = "ami-4b60deaa"
#     us-west-2 = "ami-1f117325"
#     ap-northeast-1 = "ami-9392dc92"
#     ap-southeast-1 = "ami-dcbeed8e"
#     ap-southeast-2 = "ami-37501207"
#     eu-central-1 = "ami-e4d6ecf9"
#     eu-west-1 = "ami-af4333cf"
#     sa-east-1 = "ami-7f2afa1"
#     us-east-1 = "ami-f6b11181"
#     us-west-1 = "ami-e4d6ecf9"
#     us-west-2 = "ami-1f117325"
#     ap-northeast-1 = "ami-9392dc92"
#     ap-southeast-1 = "ami-dcbeed8e"
#     ap-southeast-2 = "ami-37501207"
#     eu-central-1 = "ami-e4d6ecf9"
#     eu-west-1 = "ami-af4333cf"
#     sa-east-1 = "ami-7f2afa1"
#     us-east-1 = "ami-f6b11181"
#     us-west-1 = "ami-e4d6ecf9"
#     us-west-2 = "ami-1f117325"
#     ap-northeast-1 = "ami-9392dc92"
#     ap-southeast-1 = "ami-37501207"
#     ap-southeast-2 = "ami-1f117325"
#     eu-central-1 = "ami-e4d6ecf9"
#     eu-west-1 = "ami-af4333cf"
#     sa-east-1 = "ami-7f2afa1"
#     us-east-1 = "ami-f6b11181"
#     us-west-1 = "ami-e4d6ecf9"
#     us-west-2 = "ami-1f117325
}

