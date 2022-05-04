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

# Create variable with default value
variable "name_0" {
  default = "hello"
}

# variable block
variable "name_1" {
  default = "hello"
}

# make variable
variable "name_2" {
  default = "hello"
}

# create variable blockvariable
variable "name_3" {
  default = "hello"
}

# Create Security Groupvariable
variable "name_4" {
  default = "sg-example"
}

# Create Security Group
variable "name_5" {
  default = "sg-example"
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

