terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS availability zone
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "aws_cloudwatch_event_rule" "name_1" {
  name                = "wait_for_cloudwatch_to_finish"
  description         = "Waits for CloudWatch event rule to finish"
  schedule_expression = "cron(0/5 * *? *)"
}

