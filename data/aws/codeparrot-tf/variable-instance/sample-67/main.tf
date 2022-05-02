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
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_instance_type with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_key_name with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_key_name" {
#   default = "ec2-user"
# }

# Create variable called ec2_instance_profile with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile" {
#   default = "default"
# }

# Create variable called ec2_instance_role with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_role" {
#   default = "t2.micro"
# }

# Create variable called ec2_instance_profile_name with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_name" {
#   default = "default"
# }

# Create variable called ec2_instance_role_name with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_role_name" {
#   default = "t2.micro"
# }

# Create variable called ec2_instance_profile_arn with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_arn" {
#   default = "arn:aws:iam::123456789012:instance-profile/ec2-user"
# }

# Create variable called ec2_instance_role_policy with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_role_policy" {
#   default = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": [
#         "ec2:Describe*",
#         "ec2:AttachVolume",
#         "ec2:DetachVolume",
#         "ec2:CreateVolume",
#         "ec2:CreateTags",
#         "ec2:ModifyInstanceAttribute",
#         "ec2:RunInstances",
#         "ec2:TerminateInstances",
#         "ec2:DescribeVolumes",
#         "ec2:DescribeSnapshots",
#         "ec2:DescribeInstances",
#         "ec2:DescribeTags"
#     },
#     {
#       "Action": [
#         "elasticloadbalancing:DescribeLoadBalancers",
#         "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
#         "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
#         "elasticloadbalancing:RegisterTargets",
#         "elasticloadbalancing:RegisterListener",
#         "elasticloadbalancing:DeregisterTargets"
#     },
#     {
}

# variable called ec2_instance_count which is number type with default 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro
}

