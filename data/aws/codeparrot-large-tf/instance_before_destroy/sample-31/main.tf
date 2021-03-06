terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance called web with ami-0915bcb5fa77e4892 and t2.micro, lifecycle create before destroy true
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  key_name      = "web-key"
  subnet_id     = "${aws_subnet.public-1.id}"
  security_groups = ["${aws_security_group.web.id}"]
  associate_public_ip_address = true
  tags {
    Name = "web-key"
  }
}

