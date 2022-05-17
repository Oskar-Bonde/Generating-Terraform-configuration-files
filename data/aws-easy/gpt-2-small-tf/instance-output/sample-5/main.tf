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
#   type = "string"
#   description = "Instance type for the demo instance"
#   default = "t2.micro"
# }

# Create EC2 Instancevariable "instance_name" {
#   type = "string"
#   description = "Instance name for the demo instance"
#   default = "demo"
# }

# Create EC2 Instancevariable "instance_vpc_id" {
#   type = "string"
#   description = "VPC ID for the demo instance"
#   default = "vpc-f1c1c1"
# }

# Create EC2 Instancevariable "instance_vpc_cidr" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.0.0/16"
# }

# Create EC2 Instancevariable "instance_vpc_az" {
#   type = "string"
#   description = "VPC AZ for the demo instance"
#   default = "10.0.1.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_cidr" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.2.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_az_cidr" {
#   type = "string"
#   description = "VPC AZ for the demo instance"
#   default = "10.0.3.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.4.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az_cidr" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.5.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az_cidr_az" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.6.0/24"
# }

# Create EC2 Instancevariable "instance_vpc_cidr_az_cidr_az_cidr_az_cidr_az" {
#   type = "string"
#   description = "VPC CIDR for the demo instance"
#   default = "10.0.7.0/24"
# }
}

# Output block
}

