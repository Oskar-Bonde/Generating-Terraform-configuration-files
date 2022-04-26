terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# create AWS ELB resource
resource "aws_elb" "name_0" {
  name               = "%s"
  internal           = true
  security_groups    = ["${aws_security_group.sg.id}"]
  subnets            = ["${aws_subnet.subnet1.id}", "${aws_subnet.subnet2.id}"]
  idle_timeout       = 60
  enable_deletion_protection = false

  # health check
  health_check {
    healthy_threshold   = "2"
    unhealthy_threshold = "2"
    interval            = "5"
    timeout             = "2"
    target              = "HTTP:80/index.html"
  }

  # access logs
  access_logs {
    bucket = "${aws_s3_bucket.logs.bucket}"
    prefix = "${var.env}/${aws_elb.name_0.name}"
  }

  # tags
  tags = {
    Name = "${aws_elb.name_0.name}"
  }
}

