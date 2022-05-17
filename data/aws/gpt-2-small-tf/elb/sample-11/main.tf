terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource, create AWS ELB that listens for instance port 80 and lb port 8080
resource "aws_elb" "name_0" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
}

