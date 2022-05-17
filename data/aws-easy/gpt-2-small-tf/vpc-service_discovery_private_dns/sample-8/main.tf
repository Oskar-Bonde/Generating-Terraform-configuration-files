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

# Create a VPC resourcevariable "vpc_id" {
#    type = "string"
#    description = "VPC id"
#    default = "vpc-f8c1c0f"
# }

# Create a subnet resourcevariable "subnet_id" {
#    type = "string"
#    description = "Subnet id"
#    default = "vpc-f8c1c0f"
# }

# Create a security group resourcevariable "sg_id" {
#    type = "string"
#    description = "Security group id"
#    default = "sg-f8c1c0f"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#    default = "default"
# }

# Create a security group resourcevariable "sg_id" {
#    type = "string"
#    description = "Security group id"
#    default = "sg-f8c1c0f"
# }

# Create a subnet resourcevariable "subnet_id" {
#    type = "string"
#    description = "Subnet id"
#    default = "vpc-f8c1c0f"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#    default = "default"
# }

# Create a security group resourcevariable "sg_id" {
#    type = "string"
#    description = "Security group id"
#    default = "sg-f8c1c0f"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#    default = "default"
# }

# Create a security group resourcevariable "sg_id" {
#    type = "string"
#    description = "Security group id"
#    default = "sg-f8c1c0f"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#    default = "default"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#    default = "default"
# }

# Create a load balancer resourcevariable "lb_name" {
#    type = "string"
#    description = "Name of the load balancer"
#   
}

# Make a service discovery private dns namespace resource
}

