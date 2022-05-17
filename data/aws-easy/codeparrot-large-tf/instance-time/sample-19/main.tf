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
  instance_id = "instance-0001"
  instance_type = "t2.micro"
}

# Time sleep resource blockvariable
resource "aws_cloudwatch_event_target" "name_1" {
  rule = "${aws_cloudwatch_event_rule.wait_for_event.name}"
  arn  = "${aws_lambda_function.wait_for_event.arn}"
}

