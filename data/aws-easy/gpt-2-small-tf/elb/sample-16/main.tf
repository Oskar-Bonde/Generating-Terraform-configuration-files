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

# create AWS ELB resource block
resource "aws_elb" "name_1" {
  name                              = "ec2demo"
  security_groups                  = ["${aws_security_group.ec2demo.id}"]
  subnets                           = ["${aws_subnet.public.*.id}"]
  internal                          = true
  cross_zone_load_balancing        = true
  connection_draining                 = true
  connection_draining_timeout          = 30
  connection_draining_timeout_period = 60

  listener {
    instance_port      = 80
    instance_protocol = "http"
    lb_port            = 80
    lb_protocol        = "http"
  }

  listener {
    instance_port      = 443
    instance_protocol = "https"
    lb_port            = 443
    lb_protocol        = "https"
  }

  listener {
    instance_port      = 8080
    instance_protocol = "http"
    lb_port            = 8080
    lb_protocol        = "http"
  }

  listener {
    instance_port      = 9200
    instance_protocol = "http"
    lb_port            = 9200
    lb_protocol        = "http"
  }

  listener {
    instance_port      = 9400
    instance_protocol = "http"
    lb_port            = 9400
    lb_protocol        = "http"
  }

  listener {
    instance_port      = 9500
    instance_protocol = "http"
    lb_port            = 9500
    lb_protocol        = "http"
  }

  listener {
    instance_port      = 9600
    instance_protocol = "http"
    lb_
}

