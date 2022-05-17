terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
# aws_ami_id = "ami-0915bcb5fa77e4892"

# Create variable called ec2_instance_type with default ami-d2c9d9d9
# aws_instance_type = "t2.micro"

# Create variable called ec2_key_name with default ami-9b9d9d9d9
# aws_key_name = "key-9b9d9d9d9"

# Create variable called ec2_subnet_public_cidr with default subnet public cidr
# aws_subnet_public_cidr = "10.0.1.0/24"

# Create variable called ec2_subnet_private_cidr with default subnet private cidr
# aws_subnet_private_cidr = "10.0.1.1/24"

# Create variable called ec2_vpc_cidr_block with default vpc cidr block
# aws_vpc_cidr_block = "10.0.0.0/16"

# Create variable called ec2_subnet_public_gw with default subnet public gateway
# aws_subnet_public_gw = "10.0.1.1/24"

# Create variable called ec2_subnet_private_gw with default subnet private gateway
# aws_subnet_private_gw = "10.0.1.2/24"

# Create variable called ec2_vpc_cidr_block with default vpc cidr block
# aws_vpc_cidr_block = "10.0.0.0/16"

# Create variable called ec2_subnet_public_gw_subnet with default subnet public gateway subnet
# aws_subnet_public_gw_subnet = "10.0.1.1/24"

# Create variable called ec2_subnet_private_gw_subnet with default subnet private gateway subnet
# aws_subnet_private_gw_subnet = "10.0.1.2/24"

# Create variable called ec2_vpc_cidr_block with default vpc cidr block
# aws_vpc_cidr_block = "10.0.0.0/16"

# Create variable called ec2_subnet_public_gw_subnet with default subnet public gateway subnet
# aws_subnet_public_gw_subnet = "10.0.1.1/24"

# Create variable called ec2_subnet_private_gw_subnet with default subnet private gateway subnet
# aws_subnet_private_gw_subnet = "10.0.1.2/24"

# Create variable called ec2_vpc_cidr_block with default vpc cidr block
# aws_vpc_cidr_block = "10.0.0.0/16"

# Create variable called ec2_subnet_public_gw_subnet with default subnet public gateway subnet
# aws_subnet_public_gw_subnet = "10.0.1.1/24"

# Create variable called ec2_subnet_private_gw_subnet with default subnet private gateway subnet
# aws_subnet_private_gw_subnet = "10.0.1.2/24"

# Create variable called ec2_vpc_cidr_block with default vpc cidr block
# aws_vpc_cidr_block = "10.0.0.0/16"

# Create variable called ec2
}

# variable called ec2_instance_count which is number type with default 1

}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro

}

