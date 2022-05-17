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
  bucket                     = "testingBucket"
  acl                         = "private"
  force_destroy               = true
  force_update               = true
  force_partitioning          = true
  logging                    = true
  monitoring                 = true
  vpc_security_group_ids       = [aws_security_group.ec2demo.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2demo.name
  key_name                    = aws_key_pair.deployer.key_name
  iam_instance_profile_arn     = aws_iam_instance_profile.ec2demo.arn
  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }
  tags = {
    Name                                                                                                                       = "ec2demo"
    Terraform                                                                                                                       = "1"
    Terraform_2016_Hook                                                                                                                       = "1"
    Terraform_
}

