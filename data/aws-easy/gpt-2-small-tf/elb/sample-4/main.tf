terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create AWS ELB resource
resource "aws_elb" "name_1" {
  name                               = "elb-${var.environment}-elb"
  subnets                            = ["${aws_subnet.public.*.id}"]
  security_groups                   = ["${aws_security_group.elb.id}"]
  listener {
    instance_port                     = 80
    instance_protocol                = "http"
    lb_port                          = 80
    lb_protocol                     = "http"
  }
  health_check {
    healthy_threshold               = 2
    unhealthy_threshold            = 2
    timeout                       = 5
    target                         = "HTTP:80/"
    interval                       = 30
  }
  cross_zone_load_balancing         = true
  idle_timeout                      = 400
  connection_draining              = true
  connection_draining_timeout = 400
  tags {
    Environment                        = "${var.environment}"
    Usage                              = "${var.environment}"
    Owner                               = "${var.owner}"
    ProvisioningDate                 = "${var.provisioning_date}"
    }
}

