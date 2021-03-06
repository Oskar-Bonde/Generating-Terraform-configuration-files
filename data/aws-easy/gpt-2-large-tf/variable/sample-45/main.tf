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
#   instance_name = "ec2-nodes"
# }

# Create variable "ec2_instance_zone" {
#   instance_zone = "us-east-1a"
# }

# Create variable "ec2_instance_user" {
#   instance_user = "ec2-demo"
# }

# Create variable "ec2_instance_password" {
#   instance_password = "ec2-demo-nodes"
# }

# Create variable "ec2_instance_username" {
#   instance_username = "ec2-demo-nodes"
# }

# Create variable "ec2_instance_password_policy" {
#   instance_password_policy = "true"
# }

# Create variable "ec2_instance_username_policy" {
#   instance_username_policy = "true"
# }

# Create variable "ec2_instance_password_policy_policy" {
#   instance_password_policy_policy = "true"
# }

# Create variable "ec2_instance_username_policy_policy" {
#   instance_username_policy_policy = "true"
# }

# Create variable "ec2_instance_password_policy_policy_policy_value" {
#   instance_password_policy_policy_policy_value = "value"
# }

# Create variable "ec2_instance_username_policy_policy_value_key" {
#   instance_password_policy_policy_policy_value_key = "value_key"
# }

# Create variable "ec2_instance_username_policy_policy_value_value_key_policy" {
#   instance_username_policy_policy_value_value_value_key_policy_value = "value_value_value_value_value_value"
# }

# Create variable "ec2_instance_username_policy_policy_value_value_value_value_value_value_value_value_value" {
#   instance_username_policy_policy_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value
}

