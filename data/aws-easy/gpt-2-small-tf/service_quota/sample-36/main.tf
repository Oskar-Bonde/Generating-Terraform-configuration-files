terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create a service quota resource
resource "aws_service_quota" "name_1" {
  quota_size = 1
  depends_on = [
    aws_instance.ec2demo
  ]
}

