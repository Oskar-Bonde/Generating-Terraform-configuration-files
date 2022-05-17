terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a VPC resourcevariable "vpc_id" {
  type        = "string"
  description = "VPC ID"
}

# Make a service discovery private dns namespace resource
}

