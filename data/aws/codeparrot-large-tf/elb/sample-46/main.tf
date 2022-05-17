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

# Resource, create AWS ELB that listens for instance port 80 and lb port 80 from the security group of the ELB
resource "aws_elb" "name_0" {
  name = "example-elb"
  subnets = ["${aws_subnet.private.*.id}"]
  security_groups = ["${aws_security_group.elb_sg.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  cross_zone_load_balancing = true

  instances                   = ["${aws_instance.ec2demo.id}"]
  cross_zone_load_balancing_policy = "ELBSecurityPolicy-2015-05"

  tags {
    Name = "example-elb"
  }
}

