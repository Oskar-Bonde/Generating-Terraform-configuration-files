provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group called vpc-web. It allows port 80 and 443 ingress and all ports and ip egress
resource "aws_security_group" "name_0" {
  name        = "vpc-web"
  description = "Security Group for VPC Web"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "vpc-web"
  }
}

