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
#    description = "Instance type"
#    default = "t2.micro"
#    description = "Instance size"
# }

# Create EC2 Instancevariable "instance_size" {
#    type = "string"
#    description = "Instance size"
#    default = "t2.micro"
#    description = "Instance size"
# }

# Create EC2 Instancevariable "instance_vpc_id" {
#    type = "string"
#    description = "VPC ID"
#    default = "vpc-01"
#    description = "VPC ID"
# }

# Create EC2 Instancevariable "instance_subnet_id" {
#    type = "string"
#    description = "Subnet ID"
#    default = "subnet-01"
#    description = "Subnet ID"
# }

# Create EC2 Instancevariable "instance_vpc_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.0.0/16"
#    description = "VPC CIDR"
# }

# Create EC2 Instancevariable "instance_vpc_az" {
#    type = "string"
#    description = "VPC AZ"
#    default = "us-east-1b"
#    description = "VPC AZ"
# }

# Create EC2 Instancevariable "instance_vpc_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.1.0/24"
#    description = "VPC CIDR"
# }

# Create EC2 Instancevariable "instance_vpc_az_cidr" {
#    type = "string"
#    description = "VPC AZ"
#    default = "us-east-1c"
#    description = "VPC AZ"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az_cidr" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.2.0/24"
#    description = "VPC CIDR"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az_cidr_az" {
#    type = "string"
#    description = "VPC CIDR"
#    default = "10.0.3.0/24"
#    description =
}

# Output block
}

