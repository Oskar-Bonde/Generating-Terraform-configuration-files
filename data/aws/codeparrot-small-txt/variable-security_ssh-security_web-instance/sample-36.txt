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
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_id = "vpc-a1b1c1d"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_public_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.0.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_private_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.1.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_public_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.2.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_private_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.3.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_public_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.4.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_private_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.5.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_public_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b1c1d"
# aws_vpc_cidr_block = "10.0.6.0/16"
# aws_internet_gateway = "igw-a1b1c1d"
# aws_route_table_private_id = "rtb-a1b1c1d"
# aws_subnet_id = "subnet-a1b
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
}

# create number variable called ec2_instance_count with default 1 and type number
}

# creaet variable ec2_instance_type with default t3.micro and type string
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
}

# Create Security Group for web traffic
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
}

