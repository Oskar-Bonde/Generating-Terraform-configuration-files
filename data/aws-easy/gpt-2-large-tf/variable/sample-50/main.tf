terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create variable "ec2_instance_type" {
#   instance_type = "t2.micro"
# }

# Create variable "ec2_instance_name" {
#   instance_name = "ec2-instance"
# }

# Create variable "ec2_instance_zone" {
#   instance_zone = "us-east-1a"
# }

# Create variable "ec2_instance_user" {
#   instance_user = "ec2"
# }

# Create variable "ec2_instance_password" {
#   instance_password = "ec2-instance"
# }

# Create variable "ec2_instance_username" {
#   instance_username = "ec2-instance"
# }

# Create variable "ec2_instance_password_policy" {
#   instance_password_policy = "ec2-instance-password"
# }

# Create variable "ec2_instance_username_policy" {
#   instance_username_policy = "ec2-instance-username"
# }

# Create variable "ec2_instance_password_policy_policy" {
#   instance_password_policy_policy = "ec2-instance-password-policy"
# }

# Create variable "ec2_instance_user_name" {
#   instance_user = "ec2"
# }

# Create variable "ec2_instance_password_policy" {
#   instance_password_policy_policy = "ec2-instance-password-policy"
# }

# Create variable "ec2_instance_password_policy_policy_name" {
#   instance_password_policy_policy_name = "ec2-instance-password-policy-name"
# }

# Create variable "ec2_instance_user_password_policy" {
#   instance_password_policy_policy_name = "ec2-instance-password-policy-name"
# }

# Create variable "ec2_instance_password_policy_name_policy" {
#   instance_password_policy_name_policy = "ec2-instance-password-policy-name-policy"
# }

# Create variable "ec2_instance_user_password_policy_name" {
#   instance_password_policy_name_policy = "ec2-instance-password-policy-name-policy-name"
# }

# Create variable "ec2_instance_user_password_policy_name_policy_name_policy_name_policy" {
#   instance_password_policy_name_policy_name_policy_name_policy_name_policy_name_policy = "ec2-instance-password-policy-name-policy-name-policy-name-policy"
# }

# Create variable "ec2_instance_user_password_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_policy_name_
}

