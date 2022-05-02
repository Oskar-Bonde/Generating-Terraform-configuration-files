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
variable
variable "name_3" {
  default = "terraform-example"
}

# Create Security Group
resource
aws_security_group" "terraform-example" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.terraform-example.id}"

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

