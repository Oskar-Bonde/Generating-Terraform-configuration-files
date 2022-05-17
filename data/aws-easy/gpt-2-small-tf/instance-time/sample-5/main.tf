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

# Resource block with an EC2 instancevariable "region" {
  default = "us-east-1"
}

# Time sleep resource blockvariable "time_sleep" {
  default = "10m"
}

