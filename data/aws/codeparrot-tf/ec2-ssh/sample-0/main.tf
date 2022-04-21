terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Create Security Group that allows port 22 inbound and all outbound ports
resource "aws_security_group" "name_0" {
  name        = "sg_web"
  description = "Security group for Web"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "sg_web"
  }
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id/name to see what is running in your AWS account for AMI selected"
  ami = "ami-0915bcb5fa77e4892"
  instance_type = "t3.micro"
  key_name      = "terraform-example"
  associate_public_ip_address = true
  security_groups = ["${aws_security_group.name_0.id}"]

  # Our default security group to access
  # the instances over SSH and HTTP
  # These are for internal use only.
  #
  # To enable an example, we just install nginx and start it. By default,
  # this should be on port 80
  #
  # Nominally, this should be on port 80
  #
  # Nominally, this should be on port 80
  #
  # Nominally, this should be on port 8080
  #
  # Nominally, this should be on port 8080
  #
  # Nominally, this should be on port 8080
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  # Nominally, this should be on port 9000
  #
  #
}

