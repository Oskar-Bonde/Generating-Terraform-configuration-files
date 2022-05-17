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
  description = "Region to create resources in"
  type        = "string"
}

# Time sleep resource blockvariable "time_sleep" {
  description = "Sleep duration in seconds"
  type        = "string"
}

