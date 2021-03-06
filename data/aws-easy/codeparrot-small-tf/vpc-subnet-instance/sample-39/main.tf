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
  # The default VPC security group to access
  # the instances over SSH and HTTP
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"

  # The number of EC2 Instances to launch
  count = 3

  # The name of our SSH keypair you've created and downloaded
  # from the AWS console.
    # https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:
    key_name = "${var.key_name}"

  # Our Security group to allow HTTP and SSH access
  vpc_security_group_ids = ["${aws_security_group.default.id}"]

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

