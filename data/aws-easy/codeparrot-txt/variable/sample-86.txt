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
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_ubuntu_ami" {
#   description = "Ubuntu AMI for EC2 instances"
# }

# Create variable "aws_centos_ami" {
#   description = "Ubuntu AMI for Centos"
# }

# Create variable "aws_coreos_ami" {
#   description = "CoreOS AMI for EC2 instances"
# }

# Create variable "aws_coreos_ami_esxi-hvm-1" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-2" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-3" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-4" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-5" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-6" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-7" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-8" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-9" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-10" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-11" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-12" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-13" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-14" {
#   description = "CoreOS AMI for Elastic IPs"
# }

# Create variable "aws_coreos_ami_esxi-hvm-15
}

