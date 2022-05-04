terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block with AWS
provider "aws" {
  alias  = "us-east-1"
  region  = "us-east-1"
}

# Resource block to Create VPCresource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Resource block with VPCresource
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

