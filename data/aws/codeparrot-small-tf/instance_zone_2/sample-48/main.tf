terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region "us-east-1"
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
provider "aws" {
  region = "us-east-1"
}

# Resource, make aws instance. Use ami-038f1ca1bd58a5790, instance type t2.small and availability zone us-east-1e

#resource "aws_instance" "t2" {
#  ami           = "ami-038f1ca1bd58a5790"
#  instance_type = "t2.small"
#  availability_zone = "us-east-1e"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.id}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_instance" "t2-micro" {
#  ami           = "ami-0ff8a91507f77f867"
#  instance_type = "t2.micro"
#  availability_zone = "us-east-1e"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.private_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.ec2demo.public_ip}"
#}

#resource "aws_eip" "ip" {
#  instance = "${
}

