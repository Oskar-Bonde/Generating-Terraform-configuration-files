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

# Create AWS route table with vpc id
}

# Create route resource. Use destination 0.0.0.0/0, gateway id and route talbe id
}
