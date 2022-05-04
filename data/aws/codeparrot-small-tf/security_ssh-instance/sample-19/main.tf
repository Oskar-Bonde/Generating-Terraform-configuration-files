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
  description = "Allow all inbound and all outbound traffic"
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
# ssh security group id "ec2demo" {
#   ami = "ami-0915bcb5fa77e4892"
#   instance_type = "t3.micro"
# }

# Create EC2 Instance with ami-0ff8a91507f77f867
# ssh security group id "ec2demo" {
#   ami = "ami-0ff8a91507f77f867"
#   instance_type = "t3.micro"
# }

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id
# ssh security group id "ec2demo" {
#   ami = "ami-0915bcb5fa77e4892"
#   instance_type = "t2.micro"
# }

# Create EC2 Instance with ami-0ff8a91507f77f867
# ssh security group id "ec2demo" {
#   ami = "ami-0ff8a91507f77f867"
#   instance_type = "t2.micro"
# }

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t2.micro. Use vpc ssh security group id
# ssh security group id "ec2demo" {
#   ami = "ami-0915bcb5fa77e4892"
#   instance_type = "t2.micro"
# }

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type
}

