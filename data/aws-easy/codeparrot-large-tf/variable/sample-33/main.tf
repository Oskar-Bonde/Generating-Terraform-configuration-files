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
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_id" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_security_group_default_id" {
#   description = "Security group for Default Security Group"
# }

# Create variable "aws_security_group_ingress_id" {
#   description = "Security group for ingress traffic"
# }

# Create variable "aws_security_group_egress_id" {
#   description = "Security group for egress traffic"
# }

# Create variable "aws_instance_profile_id" {
#   description = "AWS instance profile id"
# }

# Create variable "aws_instance_type" {
#   description = "AWS instance type"
# }

# Create variable "aws_ebs_optimized" {
#   description = "EBS optimized"
# }

# Create variable "aws_iam_instance_profile_arn" {
#   description = "IAM instance profile arn"
# }

# Create variable "aws_iam_role_policy_arn" {
#   description = "IAM role policy arn"
# }

# Create variable "aws_iam_role_policy_name" {
#   description = "IAM role policy arn"
# }

# Create variable "aws_iam_instance_profile_name" {
#   description = "IAM instance profile name"
# }

# Create variable "aws_iam_role_policy_name" {
#   description = "IAM role policy name"
# }

# Create variable "aws_iam_role_policy_type" {
#   description = "IAM role policy type"
# }

# Create variable "aws_iam_role_policy_version" {
#   description = "IAM role policy version"
# }

# Create variable "aws_iam_instance_profile_arn" {
#   description = "IAM instance profile arn"
# }

# Create variable "aws_iam_role_policy_attachment_count" {
#   description = "IAM role policy attachment count"
# }

# Create variable "aws_iam_role_policy_attachment
}

