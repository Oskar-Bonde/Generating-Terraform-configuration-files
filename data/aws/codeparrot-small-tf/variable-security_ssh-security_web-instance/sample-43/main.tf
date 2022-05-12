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
# aws_key_name = "t2-micro"
# aws_instance_type = "t2.micro"
# aws_subnet_id = "subnet-a1c2b3c4d"
# aws_vpc_id = "vpc-a1b3c4d"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_id = "rtb-a1b3c4d"
# aws_route_table_private_id = "rtb-a1b3c4d"
# aws_subnet_cidr = "10.0.0.0/24"
# aws_vpc_cidr = "10.0.1.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.2.0/24"
# aws_route_table_private_cidr = "10.0.3.0/24"
# aws_subnet_cidr = "10.0.4.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.5.0/24"
# aws_route_table_private_cidr = "10.0.6.0/24"
# aws_subnet_cidr = "10.0.7.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.8.0/24"
# aws_route_table_private_cidr = "10.0.9.0/24"
# aws_subnet_cidr = "10.0.10.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.11.0/24"
# aws_route_table_private_cidr = "10.0.12.0/24"
# aws_subnet_cidr = "10.0.13.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.14.0/24"
# aws_route_table_private_cidr = "10.0.15.0/24"
# aws_subnet_cidr = "10.0.16.0/24"
# aws_internet_gateway_id = "igw-a1b3c4d"
# aws_route_table_public_cidr = "10.0.17.0/24"
# aws_route_table_private_cidr = "10.0.18.0/24"
# aws_subnet_cidr = "10.0.19.0/24"
# aws_internet_gateway_id = "igw-
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

