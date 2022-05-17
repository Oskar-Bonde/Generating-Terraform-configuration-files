one
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS and timezone
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource blockvariable "wait_for_ec2_instance_timeout" {
  type        = "string"
  description = "Time window for waiting for an instance to be created"
  default     = "05:00"
}

