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

# create AWS ELB resource
resource "aws_elb" "name_0" {
  name            = "elbdemo"
  subnets         = ["${aws_subnet.public.*.id}"]
  security_groups = ["${aws_security_group.elb.id}"]
  instances       = ["${aws_instance.ec2demo.*.id}"]
}

