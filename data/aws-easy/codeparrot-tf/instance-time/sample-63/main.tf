# Terraform Provider Block with the AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS availability zone
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "aws_cloudwatch_event_rule" "name_2" {
  name                = "wait_for_cloudwatch_to_finish"
  description         = "Waits for CloudWatch event to finish"
  schedule_expression = "cron(0/5 day)"
}

