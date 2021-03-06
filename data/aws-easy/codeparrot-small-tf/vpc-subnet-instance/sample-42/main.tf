terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC to launch our instances into
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource for VPC
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
}

# Create EC2 Instances resource for each of our instances in the VPC
resource "aws_instance" "name_2" {
  # The join() hack is required because currently the ternary operator
  # evaluates the expressions on both branches of the condition before
  # returning a value. When providing and external VPC, the template VPC
  # resource gets a count of zero which triggers an evaluation error.
    # This is tracked upstream: https://github.com/hashicorp/terraform/issues/50
    ami           = "ami-0ff8a91507f77f867"
    instance_type = "t2.micro"
    count         = "2"
  }

  # The join() hack is required because currently the ternary operator
  # evaluates the expressions on both branches of the condition before
  # returning a value. When providing and external VPC, the template VPC
  # resource gets a count of zero which triggers an evaluation error.
    # This is tracked upstream: https://github.com/hashicorp/terraform/issues/50
    subnet_id = "${aws_subnet.name_1.id}"
  # The join() hack is required because currently the ternary operator
  # evaluates the expressions on both branches of the condition before
  # returning a value. When providing and external VPC, the template VPC
  # resource gets a count of zero which triggers an evaluation error.
    # This is tracked upstream: https://github.com/hashicorp/terraform/issues/50
  count = "1"

  # The join() hack is required because currently the ternary operator
  # evaluates the expressions on both branches of the condition before
  # returning a value. When providing and external VPC, the template VPC
  # resource gets a count of zero which triggers an evaluation error.
    # This is tracked upstream: https://github.com/hashicorp/terraform/issues/50
  subnet_id = "${aws_subnet.name_1.id}"

  # We run a remote provisioner on the instance after creating it.
  # In this case, we just install nginx and start it. By default,
  # this should be on port 80
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get -y update",
      "sudo apt-get -y install nginx",
      "sudo service nginx start"
    ]
  }
}

