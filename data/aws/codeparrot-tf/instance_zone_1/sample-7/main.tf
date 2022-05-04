terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block aws in us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block that creates an ec2 instance with ami-047a51fa27710816e, instance type t2.micro in zone us west 1a
resource "aws_instance" "name_0" {
  ami           = "ami-047a51fa27710816e" 
  instance_type = "t2.micro"
  availability_zone = "us-east-1e"
  key_name      = "ec2demo"
  security_groups = ["${aws_security_group.ec2demo_az1.id}"]
  subnet_id     = "${aws_subnet.public_1a.id}"
  associate_public_ip_address = true
  source_dest_check = false

  tags {
    Name = "ec2demo az1"
  }
}
