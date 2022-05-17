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
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  key_name      = "wafv2-ip"
  subnet_id     = "subnet-11ac0174"
  vpc_security_group_ids = ["sg-11ac0174"]
  tags = {
    Name = "wafv2"
  }
}

