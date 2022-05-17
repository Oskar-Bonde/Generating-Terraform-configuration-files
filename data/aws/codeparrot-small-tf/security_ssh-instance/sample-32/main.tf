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

# Create Security Group that allows port 22 inbound and all outbound ports
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Allow all outbound traffic"
  vpc_id      = "${aws_vpc.default.id}"

  ingress {
    from_port   = 22
    to_port     = 22
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

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security
}

