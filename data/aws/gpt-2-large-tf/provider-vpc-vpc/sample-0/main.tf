terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and profile set as default
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
resource "aws_instance" "name_2" 
# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
resource "aws_instance" "name_3"
# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

