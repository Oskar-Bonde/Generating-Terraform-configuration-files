terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create wafv2 ip set# https://www.terraform.io/docs/providers/aws/r/instance_template.html
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

