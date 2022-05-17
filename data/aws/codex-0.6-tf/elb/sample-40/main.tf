terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region
provider "aws" {
  region = "us-east-1"
}

# Resource, create AWS ELB that listens for instance port 80 and lb port 80
resource "aws_elb" "name_0" {
  name = "terraform-elb"
  availability_zones = ["us-east-1a"]

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    target = "HTTP:80/"
    timeout = 3
    interval = 30
  }
}

