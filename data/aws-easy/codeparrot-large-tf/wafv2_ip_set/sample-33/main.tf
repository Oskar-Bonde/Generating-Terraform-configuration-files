terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS security group
# IAM Role: Allow to create EC2 Instances in AWS
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Security group for EC2 Instances"
  vpc_id      = "${aws_vpc.default.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# create wafv2 ip set
resource "terraform_remote_state" "name_1" {
  backend = "s3"

  config {
    bucket = "wafv2-test"
    key    = "wafv2/terraform.tfstate"
    region = "us-east-1"
  }
}

