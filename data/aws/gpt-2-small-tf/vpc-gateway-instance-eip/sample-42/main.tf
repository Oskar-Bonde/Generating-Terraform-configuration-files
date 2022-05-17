terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "terraform-example-vpc"
  }
}

# AWS Internet Gateway with vpc id
}

# Create EC2 Instance, use ami-047a51fa27710816e and t2.micro
}

# Resource block: Create Elastic IP that uses vpc, ec2 instance id and depends on internet gateway
}

