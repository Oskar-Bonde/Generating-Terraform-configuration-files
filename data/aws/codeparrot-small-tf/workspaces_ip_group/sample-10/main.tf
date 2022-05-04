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

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP
resource "aws_security_group" "name_0" {
  name        = "terraform_workspace"
  description = "Terraform Workspace"
  vpc_id      = "${aws_vpc.terraform.id}"

  ingress {
    from_port   = 150.24.14.0/24
    to_port     = 150.24.14.0/24
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "udp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "icmp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "esp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "ah"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "sctp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "udp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "icmp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "esp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "ah"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "sctp"
    cidr_blocks = ["${aws_vpc.terraform.cidr_block}"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp
}
