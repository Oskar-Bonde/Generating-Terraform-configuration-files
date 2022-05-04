terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP_NAME
# and a rule with source 200.24.14.0/24 and description LAUNCH_IP_GROUP_NAME
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Terraform example security group"
  vpc_id      = "${aws_vpc.default.id}"

  ingress {
    from_port   = 150.24.14.0/24
    to_port     = 150.24.14.0/24
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 200.24.14.0/24
    to_port     = 200.24.14.0/24
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 200.24.14.0/24
    to_port     = 200.24.14.0/24
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

