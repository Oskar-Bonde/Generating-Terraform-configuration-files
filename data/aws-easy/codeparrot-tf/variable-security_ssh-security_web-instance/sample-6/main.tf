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
  default = "terraform-example"
}

# variable block
variable
variable "name_1" {
  default = "t2.micro"
}

# make variable
variable
variable "name_2" {
  default = "terraform-example"
}

# create variable block
variableresource "aws_instance" "example" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = var.name_1
}

# Create Security Group
resourcevariable "sg" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = var.vpc_id
}

# Create Security Group
resource
}

# Create EC2 Instance
resource
}

