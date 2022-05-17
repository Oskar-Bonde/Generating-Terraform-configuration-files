terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create a VPC resource block
resource "aws_vpc" "name_1" {
  cidr_block                         = "10.0.0.0/16"
  enable_dns_hostnames               = true
  enable_dns_support                 = true
  tags = {
    Name                                     = "vpc-${var.aws_vpc_name}"
    vpc_id                                  = "${aws_vpc.name_1.id}"
    aws_subnet_group_name                  = "${aws_subnet.us-east-1a-subnet.id}"
    aws_vpc_cidr_block                      = "10.0.1.0/24"
    aws_vpc_dhcp_options_id                 = "${aws_vpc.name_1.default_dhcp_options_id}"
    aws_vpc_private_ip_google_access         = true
    aws_vpc_private_ip_google_access_only = true
    aws_vpc_public_ip_google_access          = true
    aws_vpc_public_ip_google_access_only = true
    aws_vpc_subnet_group_name                 = "${aws_subnet.us-east-1a-subnet.id}"
    aws_vpc_subnet_group_name                = "${aws_subnet.us-east-1a-subnet.name}"
    aws_vpc_dhcp_options_id                 = "${aws_vpc_dhcp_options.id}"
    aws_vpc_private_ip_google_access         = true
    aws_vpc_private_ip_google_access_only = true
    aws_vpc_public_ip_google_access          = true
    aws_vpc_public_ip_google_access_only = true
  
}

# Make a service discovery private dns namespace resource
}

