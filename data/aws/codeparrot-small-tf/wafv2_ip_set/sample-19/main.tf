terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create wafv2 ip set, use regional scope, assigna name and IPV4 address version. Set addresses to 4.3.3.4/32 and 2.8.1.9/32
resource "aws_instance" "name_0" {
  instance_type = "t2.micro"
  ami           = "ami-0ff8a91507f77f867"
  key_name      = "wafv2"
  subnet_id     = "subnet-a1b2c3d4e"
  tags = {
    Name = "wafv2"
  }
}

