terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create AWS ELB resource
resource "aws_elb" "name_0" {
  name            = "terraform-example-elb"
  subnets         = ["${aws_subnet.public.id}"]
  security_groups = ["${aws_security_group.elb.id}"]
  internal        = true
}

