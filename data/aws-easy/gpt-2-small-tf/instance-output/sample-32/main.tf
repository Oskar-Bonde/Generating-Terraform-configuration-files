provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instancevariable "instance_type" {
#    type = "string"
#    description = "Instance type for the instance"
#    default = "t2.micro"
# }

# Create EC2 Instancevariable "instance_name" {
#    type = "string"
#    description = "Instance name for the instance"
#    default = "ec2demo"
# }

# Create EC2 Instancevariable "instance_vpc_id" {
#    type = "string"
#    description = "VPC ID for the instance"
#    default = "vpc-f8b8c9"
# }

# Create EC2 Instancevariable "instance_subnet_id" {
#    type = "string"
#    description = "Subnet ID for the instance"
#    default = "subnet-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_cidr" {
#    type = "string"
#    description = "VPC CIDR for the instance"
#    default = "subnet-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_az" {
#    type = "string"
#    description = "VPC AZ for the instance"
#    default = "az-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_block" {
#    type = "string"
#    description = "VPC CIDR block for the instance"
#    default = "block-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_az_block" {
#    type = "string"
#    description = "VPC AZ block for the instance"
#    default = "az-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_block" {
#    type = "string"
#    description = "VPC CIDR block for the instance"
#    default = "block-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_block_block_block" {
#    type = "string"
#    description = "VPC CIDR block block for the instance"
#    default = "block-f8b8c9"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_block_block_block_block_block_block_block" {
#    type = "string"
#    description = "VPC CIDR block block for the instance"
#    default = "block-f8b
}

# Output block
}

