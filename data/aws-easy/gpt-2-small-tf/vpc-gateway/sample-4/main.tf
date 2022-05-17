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

# Create a AWS VPC resourcevariable "aws_vpc_cidr" {
  type    = "string"
  default = "10.0.0.0/16"
}

# create internet gateway
}

