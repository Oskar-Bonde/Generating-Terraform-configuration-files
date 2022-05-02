terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable 
variable "name_0" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# variable block
variable
variable "name_1" {
  description = "AWS instance type"
  default     = "t2.micro"
}

# make variable
variable
variable "name_2" {
  description = "AMI to launch servers."
  default     = "ami-0ff8a91507f77f867"
}

# create variable block
variablevariable "instance_name" {
  description = "Name to use for the instance."
  default     = "Terraform-example"
}

# Create Security Group
resource
aws_security_group" "terraform-example" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.terraform-example.id}"
}

# Create Security Group
resource
}

# Create EC2 Instance
resource
}

