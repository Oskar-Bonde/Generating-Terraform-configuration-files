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
# aws_instance.ec2demo.ami_id = aws_instance.ec2demo.ami_id
# aws_instance.ec2demo.region = "us-east-1"
# aws_instance.ec2demo.availability_zone = "us-east-1b"
# aws_instance.ec2demo.subnet_id = aws_subnet.us-east-1b-public.id
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip = aws_instance.ec2demo.private_ip
# aws_instance.ec2demo.public_ip = aws_instance.ec2demo.public_ip
# aws_instance.ec2demo.private_ip =
}

