terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0 and default profile
provider "aws" {
  profile = "default"
  region  = var.name_0
}

# Create variable called aws_region with default "us-east-1" and type string
variable "name_0" {
  type = string
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string

variable "name_1" {
  type = string
}

# create number variable called ec2_instance_count with default 1 and type number
variable "name_2" {
  type = number
}

# creaet variable ec2_instance_type with default t3.micro and type string

variable "name_3" {
  type = string
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress

variable "name_4" {
  type = string
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic

}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids

}

