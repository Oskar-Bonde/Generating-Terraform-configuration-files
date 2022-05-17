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
  instance_id  = "${aws_instance.ec2demo.id}"
  vpc_security_group_ids = ["${aws_security_group.ec2_public_access.id}"]
}

# Time sleep resource block
resource "aws_cloudwatch_event_target" "name_1" {
  rule = "${aws_cloudwatch_event_rule.wait_for_ec2_instance.name}"
  arn  = "${aws_lambda_function.wait_for_ec2_instance.arn}"
  input = <<EOF
{
  "target_group_arn": "${aws_cloudwatch_event_target_group.wait_for_ec2_instance.arn}",
  "target_id": "${aws_cloudwatch_event_target.name_1.id}"
}

