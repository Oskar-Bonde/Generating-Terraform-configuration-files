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
# variable "ec2_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_instance_type with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_key_name with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_key_name" {
#   default = "key-name"
# }

# Create variable called ec2_instance_profile with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_profile" {
#   default = "default"
# }

# Create variable called ec2_instance_key_name with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_key_name" {
#   default = "key-name"
# }

# Create variable called ec2_instance_profile_name with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_profile_name" {
#   default = "profile-name"
# }

# Create variable called ec2_instance_key_path with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_key_path" {
#   default = "/home/ubuntu/.ssh/id_rsa.pub"
# }

# Create variable called ec2_instance_profile_path with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_profile_path" {
#   default = "/home/ubuntu/.ssh/id_rsa"
# }

# Create variable called ec2_instance_key_name with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_key_name" {
#   default = "key-name"
# }

# Create variable called ec2_instance_profile_path with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_profile_path" {
#   default = "/home/ubuntu/.ssh/id_rsa.pub"
# }

# Create variable called ec2_instance_key_path with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_key_path" {
#   default = "/home/ubuntu/.ssh/id_rsa.pub"
# }

# Create variable called ec2_instance_profile_name with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_profile_name" {
#   default = "profile-name"
# }

# Create variable called ec2_instance_key_path with default ami-0915bcb5fa77e4892 and type string 
# variable "ec2_instance_key_
}

# variable called ec2_instance_count which is number type with default 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro
}

