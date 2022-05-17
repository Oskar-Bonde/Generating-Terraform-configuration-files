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

# Create variable called aws_subnet_id with default "subnet-ffffffff" and type string
# aws_subnet_id = "subnet-ffffffff"

# Create variable called aws_vpc_id with default "vpc-ffffffff" and type string
# aws_vpc_id = "vpc-ffffffff"

# Create variable called aws_internet_gateway_id with default "igw-ffffffff" and type string
# aws_internet_gateway_id = "igw-ffffffff"

# Create variable called aws_route_table_public_id with default "route-table-public-ffffffff" and type string
# aws_route_table_public_id = "route-table-public-ffffffff"

# Create variable called aws_subnet_public_cidr_block with default "subnet-public-ffffffff" and type string
# aws_subnet_public_cidr_block = "subnet-public-ffffffff"

# Create variable called aws_subnet_private_cidr_block with default "subnet-private-ffffffff" and type string
# aws_subnet_private_cidr_block = "subnet-private-ffffffff"

# Create variable called aws_subnet_private_gw_id with default "subnet-private-ffffffff" and type string
# aws_subnet_private_gw_id = "subnet-private-ffffffff"

# Create variable called aws_subnet_public_gw_cidr_block with default "subnet-public-ffffffff" and type string
# aws_subnet_public_gw_cidr_block = "subnet-public-ffffffff"

# Create variable called aws_subnet_private_gw_id with default "subnet-private-ffffffff" and type string
# aws_subnet_private_gw_id = "subnet-private-ffffffff"

# Create variable aws_subnet_public_gw_cidr_block with default "subnet-public-ffffffff" and type string
# aws_subnet_public_gw_cidr_block = "subnet-public-ffffffff"

# Create variable aws_subnet_private_gw_id with default "subnet-private-ffffffff" and type string
# aws_subnet_private_gw_id = "subnet-private-ffffffff"

# Create variable aws_subnet_public_gw_cidr_block with default "subnet-public-ffffffff" and type string
# aws_subnet_public_gw_cidr_block = "subnet-public-ffffffff"

# Create variable aws_subnet_private_gw_id with default "subnet-private-ffffffff" and type string
# aws_subnet_private_gw_id = "subnet-private-ffffffff"

# Create variable aws_subnet_public_gw_cidr_block with default "subnet-public-ffffffff" and type string
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

