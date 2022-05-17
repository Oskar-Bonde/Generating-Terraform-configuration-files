terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create vpc resourcevariable "vpc_id" {
#    type = "string"
#    description = "VPC ID"
#    default = "vpc-01"
#}

# create subnet resourcevariable "subnet_id" {
#    type = "string"
#    description = "Subnet ID"
#    default = "subnet-01"
#}

# create subnet resourcevariable "subnet_cidr" {
#    type = "string"
#    description = "Subnet CIDR"
#    default = "10.0.0.0/16"
#}

# create public subnet resourcevariable "public_subnet_id" {
#    type = "string"
#    description = "Public Subnet ID"
#    default = "public-01"
#}

# create private subnet resourcevariable "private_subnet_id" {
#    type = "string"
#    description = "Private Subnet ID"
#    default = "private-01"
#}

# create public subnet resourcevariable "public_subnet_cidr" {
#    type = "string"
#    description = "Public Subnet CIDR"
#    default = "10.0.1.0/24"
#}

# create private subnet resourcevariable "private_subnet_cidr" {
#    type = "string"
#    description = "Private Subnet CIDR"
#    default = "10.0.2.0/24"
#}

# create public subnet resourcevariable "public_subnet_cidr" {
#    type = "string"
#    description = "Public Subnet CIDR"
#    default = "10.0.3.0/24"
#}

# create private subnet resourcevariable "private_subnet_cidr" {
#    type = "string"
#    description = "Private Subnet CIDR"
#    default = "10.0.4.0/24"
#}

# create public subnet resourcevariable "public_subnet_cidr" {
#    type = "string"
#    description = "Public Subnet CIDR"
#    default = "10.0.5.0/24"
#}

# create private subnet resourcevariable "private_subnet_cidr" {
#    type = "string"
#    description = "Private Subnet CIDR"
#    default = "10.0.6.0/24"
#}

# create public subnet resourcevariable "public_subnet_cidr" {
#    type = "string"
#    description = "Public Subnet CIDR"
#    default =
}

# create an egress only internet gateway
}

