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
# aws_instance_id = aws_instance.ec2demo.id
# aws_instance_type = "t2.micro"
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_ami_id = aws_instance.ec2demo.ami_id
# aws_instance_
}

