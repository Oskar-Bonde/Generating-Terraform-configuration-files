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

# Resource, create AWS ELB that listens for instance port 80 and lb port 80
resource "aws_elb" "name_0" {
  name = "elb-elb"
  subnets = ["10.0.0.0/16"]
  security_groups = ["${aws_security_group.elb.id}"]
  instances = ["${aws_instance.ec2demo.id}"]
}

