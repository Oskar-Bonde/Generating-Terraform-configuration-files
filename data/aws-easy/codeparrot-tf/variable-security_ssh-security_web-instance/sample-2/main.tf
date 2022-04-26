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
  default = "terraform"
}

# create variable block
variable
variable "name_3" {
  default = "terraform"
}

# Create Security Group
resourceresource "aws_security_group" "terraform_example" {
  name        = "${var.name_0}"
  description = "Used in the terraform"
  vpc_id      = "${var.vpc_id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
resource
}

# Create EC2 Instance
resource
}

