terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create vpc resourcevariable "vpc_id" {
#   type = "string"
#   description = "The ID of the VPC"
#   default = "vpc-12345678"
#}

# Create subnet resourcevariable "subnet_id" {
#   type = "string"
#   description = "The ID of the subnet"
#   default = "subnet-12345678"
#}

# Create security group resourcevariable "sg_id" {
#   type = "string"
#   description = "The ID of the security group"
#   default = "sg-12345678"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block for the subnet"
#   default = "10.0.0.0/16"
#}

# Create security group resourcevariable "sg_id" {
#   type = "string"
#   description = "The ID of the security group"
#   default = "sg-12345678"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block for the subnet"
#   default = "10.0.1.0/24"
#}

# Create security group resourcevariable "sg_id" {
#   type = "string"
#   description = "The ID of the security group"
#   default = "sg-12345678"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block for the subnet"
#   default = "10.0.2.0/24"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block for the subnet"
#   default = "10.0.3.0/24"
#}

# Create security group resourcevariable "sg_id" {
#   type = "string"
#   description = "The ID of the security group"
#   default = "sg-12345678"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block for the subnet"
#   default = "10.0.4.0/24"
#}

# Create security group resourcevariable "sg_id" {
#   type = "string"
#   description = "The ID of the security group"
#   default = "sg-12345678"
#}

# Create subnet resourcevariable "subnet_cidr" {
#   type = "string"
#   description = "The CIDR block
}

# create an egress only internet gateway
}

