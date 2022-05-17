terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.aws_region and default profile
provider "aws" {
  profile = "default"
  region  = var.aws_region
}

# Create variable called aws_region with default "us-east-1" and type string
# aws_region = "us-east-1"
# aws_profile = "default"
# aws_type = "t2.micro"
# aws_instance_type = "t2.micro"
# aws_volume_size = "50"
# aws_volume_type = "gp2"
# aws_key_pair = "key-pair-1"
# aws_internet_gateway = "true"
# aws_subnet_id = "subnet-1"
# aws_vpc_id = "vpc-1"
# aws_internet_gateway_id = "igw-1"
# aws_route_table_public_id = "rtb-1"
# aws_route_table_private_id = "rtb-2"
# aws_subnet_id = "subnet-2"
# aws_vpc_cidr_block = "10.0.0.0/16"
# aws_internet_gateway_id = "igw-2"
# aws_route_table_public_cidr_block = "10.0.1.0/24"
# aws_route_table_private_cidr_block = "10.0.2.0/24"
# aws_subnet_id = "subnet-3"
# aws_vpc_cidr_block = "10.0.4.0/24"
# aws_internet_gateway_id = "igw-3"
# aws_route_table_public_cidr_block = "10.0.5.0/24"
# aws_route_table_private_cidr_block = "10.0.6.0/24"
# aws_subnet_id = "subnet-4"
# aws_vpc_cidr_block = "10.0.7.0/24"
# aws_internet_gateway_id = "igw-4"
# aws_route_table_public_cidr_block = "10.0.8.0/24"
# aws_route_table_private_cidr_block = "10.0.9.0/24"
# aws_subnet_id = "subnet-5"
# aws_vpc_cidr_block = "10.0.10.0/24"
# aws_internet_gateway_id = "igw-5"
# aws_route_table_public_cidr_block = "10.0.11.0/24"
# aws_route_table_private_cidr_block = "10.0.12.0/24"
# aws_subnet_id = "subnet-6"
# aws_vpc_cidr_block = "10.0.13.0/24"
# aws_internet_gateway_id = "igw-6"
# aws_route_table_public_cidr_block = "10.0.14.0/24"
# aws_route_table_private_cidr_block = "10.0.15.0/24"
# aws_subnet_id = "subnet-7"
# aws_vpc_cidr_block = "10.0.16.0/24"
# aws_internet_gateway_id = "igw-7"
# aws_route_table_public_cidr_block = "10.0.17.
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string

}

# create number variable called ec2_instance_count with default 1 and type number

}

# creaet variable ec2_instance_type with default t3.micro and type string

}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress

}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic

}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids

}

