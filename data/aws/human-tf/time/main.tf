terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    time = {
      source = "hashicorp/time"
    }
  } 
}
# Provider block AWS with region us east
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Resource block with an EC2 instance called my-ec2-vm with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block, Wait for 90 seconds after creating my-ec2-vm
resource "time_sleep" "name_1" {
  depends_on = [aws_instance.name_0]
  create_duration = "90s"
}