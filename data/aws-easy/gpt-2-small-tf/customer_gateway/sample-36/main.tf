terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create customer gateway
resource "aws_internet_gateway" "name_0" {
  vpc_id = "${aws_vpc.main.id}"
}

