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
#    description = "ID of the VPC"
#}

# create subnet resourcevariable "subnet_id" {
#    type = "string"
#    description = "ID of the subnet"
#}

# create vpc security variable "vpc_sg_id" {
#    type = "string"
#    description = "ID of the security group"
#}

# create vpc subnet resourcevariable "subnet_cidr" {
#    type = "string"
#    description = "CIDR of the subnet"
#}

# create vpc security variable "vpc_sg_id" {
#    type = "string"
#    description = "ID of the security group"
#}

# create vpc subnet resourcevariable "subnet_az_1" {
#    type = "string"
#    description = "Az 1 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_2" {
#    type = "string"
#    description = "Az 2 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_3" {
#    type = "string"
#    description = "Az 3 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_4" {
#    type = "string"
#    description = "Az 4 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_5" {
#    type = "string"
#    description = "Az 5 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_6" {
#    type = "string"
#    description = "Az 6 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_7" {
#    type = "string"
#    description = "Az 7 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_8" {
#    type = "string"
#    description = "Az 8 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_9" {
#    type = "string"
#    description = "Az 9 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_10" {
#    type = "string"
#    description = "Az 10 of the subnet"
#}

# create vpc subnet resourcevariable "subnet_az_11" {
#    type = "string"
#    description = "
}

# create an egress only internet gateway
}

