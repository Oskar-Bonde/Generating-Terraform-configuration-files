terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block, region set to us east 1 and default profile 
provider "aws" {
  region     = "us-east-1"
  profile    = "default"
}

# Resource, an aws security group with the following ingress ports: 80, 443, 8080, 8081, 7080, 7081. All use cidr block 0.0.0.0/0
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Used in the terraform tutorial"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 7080
    to_port     = 7080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 7081
    to_port     = 7081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
