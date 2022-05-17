terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an amazon VPC in private network 10.0.0.0/16 and private network 10.0.1.0/24 and private network 10.0.2.0/24 and private network 10.0.3.0/24 and private network 10.0.4.0/24 and private network 10.0.5.0/24 and private network 10.0.6.0/24 and private network 10.0.7.0/24 and private network 10.0.8.0/24 and private network 10.0.9.0/24 and private network 10.0.10.0/24 and private network 10.0.11.0/24 and private network 10.0.12.0/24 and private network 10.0.13.0/24 and private network 10.0.14.0/24 and private network 10.0.15.0/24
# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

