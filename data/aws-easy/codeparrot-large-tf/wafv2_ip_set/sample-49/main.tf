terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS security group
# IAM Role: Allow the VPC to read ECS instances from the internet
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Security group for EC2 instances"
  vpc_id      = "${aws_vpc.demo.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
    bucket = "terraform-state"
    key    = "wafv2/terraform.tfstate"
    region = "eu-west-1"
  }
}

