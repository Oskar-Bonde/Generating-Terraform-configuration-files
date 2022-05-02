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
#   description = "CIDR block for the VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for the subnet"
# }

# Create variable "aws_vpc_name" {
#   description = "Name of the VPC"
# }

# Create variable "aws_vpc_cidr_block_az1" {
#   description = "CIDR block for the first AZ1"
# }

# Create variable "aws_vpc_cidr_block_az2" {
#   description = "CIDR block for the second AZ2"
# }

# Create variable "aws_subnet_cidr_block_az3" {
#   description = "CIDR block for the third AZ3"
# }

# Create variable "aws_subnet_cidr_block_az4" {
#   description = "CIDR block for the fourth AZ4"
# }

# Create variable "aws_subnet_cidr_block_az5" {
#   description = "CIDR block for the fifth AZ5"
# }

# Create variable "aws_subnet_cidr_block_az6" {
#   description = "CIDR block for the sixth AZ6"
# }

# Create variable "aws_subnet_cidr_block_az7" {
#   description = "CIDR block for the seventh AZ7"
# }

# Create variable "aws_subnet_cidr_block_az8" {
#   description = "CIDR block for the eighth AZ8"
# }

# Create variable "aws_subnet_cidr_block_az9" {
#   description = "CIDR block for the ninth AZ9"
# }

# Create variable "aws_subnet_cidr_block_az10" {
#   description = "CIDR block for the tenth AZ10"
# }

# Create variable "aws_subnet_cidr_block_az11" {
#   description = "CIDR block for the eleventh AZ11"
# }

# Create variable "aws_subnet_cidr_block_az12" {
#   description = "CIDR block for the twelve AZ12"
# }

# Create variable "aws_subnet_cidr_block_az13" {
#   description = "CIDR block for the nineth AZ13"
# }

# Create variable "aws_subnet_cidr_block_az14" {
#   description = "CIDR block for the twenty AZ14"
# }

# Create variable "aws_subnet_cidr_block_az15" {
#   description = "CIDR block for the ninety AZ15"
# }

# Create variable "aws_subnet_cidr_block_az16" {
#   description = "CIDR block for the twenty AZ16"
# }

}

