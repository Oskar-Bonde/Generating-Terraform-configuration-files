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
  name                                    = "ec2demo-elb"
  security_groups                         = ["${aws_security_group.ec2demo.id}"]
  subnets                                 = ["${aws_subnet.public.*.id}"]
  internal                                 = true
  cross_zone_load_balancing             = true
  idle_timeout                              = 3600
  connection_draining                        = true
  connection_draining_timeout                  = 3600
  cross_zone_load_balancing               = true
  idle_timeout                              = 3600
  connection_draining_timeout                    = true
  cross_zone_load_balancing               = true
  idle_timeout                              = 3600
  connection_draining_timeout                     = true
  cross_zone_load_balancing               = true
  idle_timeout                              = 3600
  cross_zone_load_balancing_timeout             = true
  cross_zone_load_balancing_timeout            = true
  idle_timeout                              = true
  cross_zone_load_balancing_timeout            = true
  cross_zone_load_balancing_timeout           = true
  cross_zone_load_balancing_timeout      
}

