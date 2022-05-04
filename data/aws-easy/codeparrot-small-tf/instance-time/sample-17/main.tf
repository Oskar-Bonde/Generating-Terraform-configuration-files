ketch
provider "timesketch" {
  version = ">= 0.9.3"
}

# Provider block AWS
provider "aws" {
  alias  = "timesketch"
  region = "us-east-1"
}

# Resource block with an EC2 instanceresource group
resource "aws_instance_resource_group" "name_0" {
  name = "timesketch-ec2demo"
  description = "Timesketch EC2 demo"
}

# Time sleep resource block
resource "timesketch_time_sleep" "name_1" {
  depends_on = [
    aws_instance.ec2demo,
    timesketch_instance.ec2demo,
  ]
}

