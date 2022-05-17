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

# Create a AWS VPC resource
resource "aws_vpc" "name_1" {
  cidr_block                               = "10.0.0.0/16"
  enable_dns_hostnames                       = true
  enable_dns_support                         = true
  tags = {
    Name                                          = "ec2demo"
    "kubernetes.io/cluster/default" = "owned"
  }
}

# AWS Internet Gateway
}

# Create EC2 Instance
}

# Resource block: Create Elastic IP
}

