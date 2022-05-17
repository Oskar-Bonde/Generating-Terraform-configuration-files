terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an amazon VPC
resource "aws_vpc" "name_1" {
  cidr_block                                    = "172.20.0.0/16"
  enable_dns_hostnames                             = true
  enable_dns_support                               = true
  tags = {
    Name                                                 = "ec2demo"
    Region                                              = "us-east-1"
    Name                                                    = "ec2demo"
    "kubernetes.io/cluster/default"                            = "owned"
  }
}

