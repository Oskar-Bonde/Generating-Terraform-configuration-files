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

# Create variable called aws_profile with default "default" and type string
# aws_profile = "default"

# Create variable called aws_instance_type with default "t2.micro" and ami-0ff8a91507f77f867
# aws_instance_type = "t2.micro"

# Create variable called aws_ami_id with default "ami-0ff8a91507f77f867"
# aws_ami_id = "ami-0ff8a91507f77f867"

# Create variable called aws_subnet_id with default "subnet-ffffffff" and type string
# aws_subnet_id = "subnet-ffffffff"

# Create variable called aws_security_group with default "default" and type string
# aws_security_group = "default"

# Create variable called aws_key_pair with default "key-ffffffff" and type string
# aws_key_pair = "key-ffffffff"

# Create variable called aws_instance_profile with default "default" and type string
# aws_instance_profile = "default"

# Create variable called aws_subnet_id_public with default "subnet-ffffffff" and type string
# aws_subnet_id_public = "subnet-ffffffff"

# Create variable called aws_security_group_rule with default "tcp" and type string
# aws_security_group_rule = "tcp:22"

# Create variable called aws_key_pair_public with default "key-ffffffff" and type string
# aws_key_pair_public = "key-ffffffff"

# Create variable called aws_instance_profile_public with default "default" and type string
# aws_instance_profile_public = "default"

# Create variable called aws_subnet_id_private with default "subnet-ffffffff" and type string
# aws_subnet_id_private = "subnet-ffffffff"

# Create variable called aws_security_group_rule with default "tcp" and type string
# aws_security_group_rule = "tcp:22"

# Create variable called aws_key_pair_private with default "key-ffffffff" and type string
# aws_key_pair_private = "key-ffffffff"

# Create variable aws_instance_profile_private with default "default" and type string
# aws_instance_profile_private = "default"

# Create variable aws_subnet_id_private with default "subnet-ffffffff" and type string
# aws_subnet_id_private = "subnet-ffffffff"

# Create variable aws_security_group_rule with default "tcp" and type string
# aws_security_group_rule = "tcp:22"

# Create variable aws_key_pair_private with default "key-ffffffff" and type string
# aws_key_pair_private = "key-ffffffff"

# Create variable aws_instance_profile_private with default "default" and type string
# aws_instance_profile_private = "default"

# Create variable aws_subnet_id_private with default "subnet-ffffffff" and type string
# aws_subnet_id_private = "subnet-ffffffff"

# Create variable aws_security_group_rule with default
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

