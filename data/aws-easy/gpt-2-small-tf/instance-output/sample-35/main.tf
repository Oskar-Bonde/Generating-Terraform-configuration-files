provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instancevariable "instance_type" {
#   type = "string"
#   description = "Instance type"
#   default = "t2.micro"
# }

# Create EC2 Instance variable "instance_name" {
#   type = "string"
#   description = "Instance name"
#   default = "ec2demo"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1b"
# }

# Create EC2 Instance variable "instance_instance_type" {
#   type = "string"
#   description = "Instance type"
#   default = "t2.micro"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1c"
# }

# Create EC2 Instance variable "instance_instance_type" {
#   type = "string"
#   description = "Instance type"
#   default = "t2.micro"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1d"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1e"
# }

# Create EC2 Instance variable "instance_instance_type" {
#   type = "string"
#   description = "Instance type"
#   default = "t2.micro"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1f"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1g"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1h"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1i"
# }

# Create EC2 Instance variable "instance_zone" {
#   type = "string"
#   description = "Instance zone"
#   default = "us-east-1j"
# }

# Create EC2 Instance variable "instance_zone" {

}

# Output block
}

