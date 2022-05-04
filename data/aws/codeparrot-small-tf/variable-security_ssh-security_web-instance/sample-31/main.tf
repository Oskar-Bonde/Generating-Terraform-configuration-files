terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0 and default profile
provider "aws" {
  profile = "default"
  region  = var.name_0
}

# Create variable called aws_region with default "us-east-1" and type string
variable "name_0" {
  default = "us-east-1"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_1" {
  default = "ami-0915bcb5fa77e4892"
}

# create number variable called ec2_instance_count with default 1 and type number
variable "name_2" {
  default = 1
}

# creaet variable ec2_instance_type with default t3.micro and type string
variable "name_3" {
  default = "t3.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_security_group.default.name
# aws_security_group.ssh.name
# aws_security_group.egress.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.default.name
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
# aws_network_interface.ssh.name

# Create Network Interface for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all other instances in the VPC.
}

# Create Security Group for web traffic
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
}

