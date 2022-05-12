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

# Create variable called aws_profile with default "us-east-1" and type string
# aws_profile = "default"

# Create variable called aws_instance_type with default "t2.micro" and ami-0ff8a91507f77f867
# aws_instance_type = "t2.micro"

# Create variable called aws_ami_id with default "ami-0ff8a91507f77f867"
# aws_ami_id = "ami-0ff8a91507f77f867"

# Create variable called aws_subnet_id with default "subnet-1" and type string
# aws_subnet_id = "subnet-1"

# Create variable called aws_security_group with default "sg-1" and type string
# aws_security_group = "sg-1"

# Create variable called aws_key_pair with default "key-pair-1" and type string
# aws_key_pair = "key-pair-1"

# Create variable called aws_vpc_id with default "vpc-1" and type string
# aws_vpc_id = "vpc-1"

# Create variable called aws_internet_gateway_id with default "igw-1" and type string
# aws_internet_gateway_id = "igw-1"

# Create variable called aws_route_table_public_id with default "rtb-1" and type string
# aws_route_table_public_id = "rtb-1"

# Create variable called aws_subnet_public_id with default "subnet-1" and type string
# aws_subnet_public_id = "subnet-1"

# Create variable called aws_security_group_id with default "sg-1" and type string
# aws_security_group = "sg-1"

# Create variable called aws_internet_gateway_id with default "igw-1" and type string
# aws_internet_gateway_id = "igw-1"

# Create variable called aws_route_table_private_id with default "rtb-1" and type string
# aws_route_table_private_id = "rtb-1"

# Create variable called aws_subnet_private_id with default "subnet-1" and type string
# aws_subnet_private_id = "subnet-1"

# Create variable called aws_security_group_id with default "sg-1" and type string
# aws_security_group = "sg-1"

# Create variable called aws_internet_gateway_id with default "igw-1" and type string
# aws_internet_gateway_id = "igw-1"

# Create variable called aws_route_table_public_id with default "rtb-1" and type string
# aws_route_table_public_id = "rtb-1"

# Create variable called aws_subnet_public_id with default "subnet-1" and type string
# aws_subnet_public_id = "subnet-1"

# Create variable called aws_security_group_id with default "sg-1" and type string
# aws_security_group
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

