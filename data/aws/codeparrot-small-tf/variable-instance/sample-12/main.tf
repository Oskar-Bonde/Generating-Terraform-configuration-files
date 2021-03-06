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

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_0" {
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1
# variable "ec2_instance_count" {
#   type = "string"
# }

# variable "ec2_subnet_id" {
#   type = "string"
# }

# variable "ec2_vpc_cidr_block" {
#   type = "string"
# }

# variable "ec2_subnet_public_cidr_block" {
#   type = "string"
# }

# variable "ec2_vpc_private_cidr_block" {
#   type = "string"
# }

# variable "ec2_subnet_private_cidr_block" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw" {
#   type = "string"
# }

# variable "ec2_subnet_private_gw" {
#   type = "string"
# }

# variable "ec2_subnet_public_ip" {
#   type = "string"
# }

# variable "ec2_subnet_private_ip" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip" {
#   type = "string"
# }

# variable "ec2_subnet_private_gw_public_ip" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_private_ip" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_1" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_2" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_3" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_4" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_5" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_6" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_7" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_8" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_9" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_10" {
#   type = "string"
# }

# variable "ec2_subnet_public_gw_public_ip_11" {
#   type
}

# Create EC2 Instance with ami set to var.name_0, count as var.ec2_instance_count and instance type t3.micro

}

