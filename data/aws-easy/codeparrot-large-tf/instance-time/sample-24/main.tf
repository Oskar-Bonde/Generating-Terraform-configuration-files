# Terraform Providers
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block with an EC2 instanceresource
resource "aws_instance_resource" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_id = "${aws_instance.ec2demo.id}"
  tags {
    Name = "terraform-ec2demo"
  }
}

# Time sleep resource block
resource "aws_cloudwatch_event_rule" "name_1" {
  name = "wait_for_ec2_instance"
  description = "Waiting for EC2 instance to be ready"
  schedule_expression = "cron(0/5 * *? *)"
}

