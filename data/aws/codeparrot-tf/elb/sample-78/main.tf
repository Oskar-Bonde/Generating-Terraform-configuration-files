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
  name = "elb-${var.environment}-${var.colour}-${var.key_name}"
  subnets = ["${split(",", var.public_subnet_ids)}"]
  security_groups = ["${aws_security_group.elb.id}"]
  instances = ["${aws_instance.ec2demo.*.id}"]

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

  security_groups = ["${aws_security_group.elb.id}"]

  tags {
    Name = "elb-${var.environment}-${var.colour}-${var.key_name}"
  }
}
