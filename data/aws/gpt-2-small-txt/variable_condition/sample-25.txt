provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region  = "us-east-1"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
# aws_instance.ec2demo.id = aws_instance.ec2demo.id
# aws_instance.ec2demo.name = "ec2demo"
# aws_instance.ec2demo.region = "us-east-1"
# aws_instance.ec2demo.availability_zone = "us-east-1b"
# aws_instance.ec2demo.private_ip = "10.0.0.0"
# aws_instance.ec2demo.public_ip = "10.0.1.0"
# aws_instance.ec2demo.private_ip = "10.0.2.0"
# aws_instance.ec2demo.public_ip = "10.0.3.0"
# aws_instance.ec2demo.private_ip = "10.0.4.0"
# aws_instance.ec2demo.public_ip = "10.0.5.0"
# aws_instance.ec2demo.private_ip = "10.0.6.0"
# aws_instance.ec2demo.public_ip = "10.0.7.0"
# aws_instance.ec2demo.private_ip = "10.0.8.0"
# aws_instance.ec2demo.public_ip = "10.0.9.0"
# aws_instance.ec2demo.private_ip = "10.0.10.0"
# aws_instance.ec2demo.public_ip = "10.0.11.0"
# aws_instance.ec2demo.public_ip = "10.0.12.0"
# aws_instance.ec2demo.private_ip = "10.0.13.0"
# aws_instance.ec2demo.public_ip = "10.0.14.0"
# aws_instance.ec2demo.public_ip = "10.0.15.0"
# aws_instance.ec2demo.private_ip = "10.0.16.0"
# aws_instance.ec2demo.public_ip = "10.0.17.0"
# aws_instance.ec2demo.public_ip = "10.0.18.0"
# aws_instance.ec2demo.private_ip = "10.0.19.0"
# aws_instance.ec2demo.public_ip = "10.0.20.0"
# aws_instance.ec2demo.private_ip = "10.0.21.0"
# aws_instance.ec2demo.public_ip = "10.0.22.0"
# aws_instance.ec2demo.private_ip = "10.0.23.0"
}

