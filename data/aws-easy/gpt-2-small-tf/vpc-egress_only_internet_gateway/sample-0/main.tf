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
#    default = "vpc-12345678"
# }

# create vpc resourcevariable "vpc_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.0.0/16"
# }

# create vpc resourcevariable "vpc_az" {
#    type = "string"
#    description = "VPC AZ"
#    default = "10.0.1.0/24"
# }

# create vpc resourcevariable "vpc_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.2.0/24"
# }

# create vpc resourcevariable "vpc_az_cidr" {
#    type = "string"
#    description = "VPC AZ"
#    default = "10.0.3.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.4.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.5.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.6.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.7.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.8.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.9.0/24"
# }

# create vpc resourcevariable "vpc_cidr_az_cidr" {
#
}

# create an egress only internet gateway
}

