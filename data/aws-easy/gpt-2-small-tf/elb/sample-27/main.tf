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
  name = "ec2demo"
  subnets = ["${aws_subnet.public.*.id}"]
  security_groups = ["${aws_security_group.ec2demo.id}"]
  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  listener {
    instance_port = 443
    instance_protocol = "https"
    lb_port = 443
    lb_protocol = "https"
  }
  listener {
    instance_port = 8500
    instance_protocol = "http"
    lb_port = 8500
    lb_protocol = "http"
  }
  listener {
    instance_port = 8600
    instance_protocol = "https"
    lb_port = 8600
    lb_protocol = "https"
  }
  listener {
    instance_port = 8707
    instance_protocol = "https"
    lb_port = 8707
    lb_protocol = "https"
  }
  listener {
    instance_port = 8784
    instance_protocol = "https"
    lb_port = 8784
    lb_protocol = "https"
  }
  listener {
    instance_port = 8785
    instance_protocol = "https"
    lb_port = 8785
    lb_protocol = "https"
  }
  listener {
    instance_port = 8786
    instance_protocol = "https"
    lb_port = 8786
    lb_protocol = "https"
  }
  listener {
    instance_port = 8787
    instance_protocol = "https"
    lb_port = 8787
    lb_protocol = "https"
  }
  listener {
    instance_port = 8789
    instance_protocol = "https"
    lb_port = 8789
    lb_protocol = "https"
  }
  listener {
    instance_port = 8790
    instance_protocol = "https"
    lb_port = 8790
    lb_protocol = "https"
  }
  listener {
    instance_port = 8791
    instance_protocol = "https"
    lb_port = 8791
    lb_protocol = "https"
  }
  listener {
    instance_port = 8792
    instance_protocol = "https"
    lb_port = 8792
    lb_protocol
}

