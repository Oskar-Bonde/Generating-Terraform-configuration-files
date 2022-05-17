terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# resource block: create 5 EC2 instances with ami-047a51fa27710816e and t2.micro
# resource "aws_instance" "ec2demo" {
#   ami           = "ami-047a51fa27710816e"
#   instance_type = "t2.micro"
#   key_name      = "ssh-key"
#   subnet_id     = "subnet-11ac0174"
#   vpc_security_group_ids = ["sg-11ac0174"]
# }

# resource block: create 5 EC2 instances with ami-0ff8a91507f77f77f77f
# resource "aws_instance" "ec2demo" {
#   ami           = "ami-0ff8a91507f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77f77
}

