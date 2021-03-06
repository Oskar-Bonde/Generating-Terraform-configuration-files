# See https://docs.aws.amazon.com/ec2/latest/userguide/instance_configuration.html
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS with region us east
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867

# terraform configuration file
# Terraform Block the providers AWS and time
# See https://docs.aws.amazon.com/ec2/latest/userguide/instance_configuration.html
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "aws_ebs_volume" "name_0" {
  availability_zone = "us-east-1e"
  size              = 10
  type              = "gp2"

  tags {
    Name = "terraform-time-sleep"
  }
}

