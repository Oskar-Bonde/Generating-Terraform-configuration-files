terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource
resource "aws_s3_bucket" "name_0" {
  bucket                   = "testingBucket"
  acl                       = "private"
  force_destroy             = true
  force_update             = true
  force_delete             = true
  force_partitioning       = true
  logging                  = true
  monitoring               = true
  vpc_security_group_ids     = [aws_security_group.ec2demo.id]
  iam_instance_profile       = aws_iam_instance_profile.ec2demo.name
  associate_public_ip_address = true
  key_name                  = aws_key_pair.kubernetes-ec2demo-key.key_name
  iam_instance_profile       = aws_iam_instance_profile.ec2demo.name
  user_data                 = file("${path.module}/data/aws_launch_configuration_ec2demo.conf")
  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }
  lifecycle = {
    create_before_destroy = true
  }
}

