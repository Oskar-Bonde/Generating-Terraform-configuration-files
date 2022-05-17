# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create Security Group called vpc-ssh. It allows port 22 ingress and all ports and ip egress
# to all internet access.
resource "aws_security_group" "name_0" {
  name        = "vpc-ssh"
  description = "Allow all inbound traffic"
  vpc_id      = "${aws_vpc.vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc-vpc
}

