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
resource "aws_instanceresource" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_id = "instance-1"
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "aws_cloudwatch_event_rule" "name_1" {
  name                = "wait_for_cloudwatch"
  description         = "Waits for a CloudWatch event to be created"
  schedule_expression = "cron(0/5 20 * *? *)"
}

