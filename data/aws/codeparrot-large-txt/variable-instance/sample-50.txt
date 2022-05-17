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

# Create variable called ec2_instance_profile_name with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_name" {
#   default = "default"
# }

# Create variable called ec2_instance_type_name with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_type_name" {
#   default = "t2.micro"
# }

# Create variable called ec2_key_path with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_key_path" {
#   default = "key-1.pem"
# }

# Create variable called ec2_instance_profile_path with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_path" {
#   default = "default"
# }

# Create variable called ec2_instance_type_path with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_type_path" {
#   default = "default"
# }

# Create variable called ec2_key_name_path with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_key_name_path" {
#   default = "key-2.pem"
# }

# Create variable called ec2_instance_profile_path with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_path" {
#   default = "default"
# }

# Create variable called ec2_instance_type_instance_profile with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_type_instance_profile_instance_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_instance_profile_name_instance_profile with default ami-0915bcb5fa77e4892 and type string 
# variable "aws_instance_profile_name_instance_profile_instance_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_instance_
}

# variable called ec2_instance_count which is number type with default 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro
}

