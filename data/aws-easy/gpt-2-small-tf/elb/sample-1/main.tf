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
  idle_timeout                        = 400
  connection_draining                = true
  connection_draining_timeout = 400

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port            = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout              = 3
    target               = "HTTP:80/"
    interval             = 30
  }

  tags {
    Name                                  = "ec2demo-elb"
    Environment                          = "production"
    Usage                                 = "production"
    Owner                                   = "John Doe"
    ProvisioningDate                      = "2012-10-17"
  }
}
