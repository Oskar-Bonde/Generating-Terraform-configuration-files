one
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS and timezone
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource blockvariable "timesleep" {
  type        = "string"
  description = "Sleep duration in seconds"
  default     = "120"
}

