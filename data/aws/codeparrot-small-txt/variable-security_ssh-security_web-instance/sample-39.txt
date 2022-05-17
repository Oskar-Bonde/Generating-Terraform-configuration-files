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
# aws_subnet_id = "subnet-1"
# aws_security_group = "default"
# aws_key_pair = "key-pair-2"
# aws_subnet_id = "subnet-2"
# aws_security_group = "default"
# aws_key_pair = "key-pair-3"
# aws_subnet_id = "subnet-3"
# aws_security_group = "default"
# aws_key_pair = "key-pair-4"
# aws_subnet_id = "subnet-4"
# aws_security_group = "default"
# aws_key_pair = "key-pair-5"
# aws_subnet_id = "subnet-5"
# aws_security_group = "default"
# aws_key_pair = "key-pair-6"
# aws_subnet_id = "subnet-6"
# aws_security_group = "default"
# aws_key_pair = "key-pair-7"
# aws_subnet_id = "subnet-7"
# aws_security_group = "default"
# aws_key_pair = "key-pair-8"
# aws_subnet_id = "subnet-8"
# aws_security_group = "default"
# aws_key_pair = "key-pair-9"
# aws_subnet_id = "subnet-9"
# aws_security_group = "default"
# aws_key_pair = "key-pair-10"
# aws_subnet_id = "subnet-10"
# aws_security_group = "default"
# aws_key_pair = "key-pair-11"
# aws_subnet_id = "subnet-11"
# aws_security_group = "default"
# aws_key_pair = "key-pair-12"
# aws_subnet_id = "subnet-12"
# aws_security_group = "default"
# aws_key_pair = "key-pair-13"
# aws_subnet_id = "subnet-13"
# aws_security_group = "default"
# aws_key_pair = "key-pair-14"
# aws_subnet_id = "subnet-14"
# aws_security_group = "default"
# aws_key_pair = "key-pair-15"
# aws_subnet_id = "subnet-15"
# aws_security_group = "default"
# aws_key_pair = "key-pair-16"
# aws_subnet_id = "subnet-16"
# aws_security_group = "default"
# aws_key_pair = "key-pair-17"
# aws_subnet_id = "subnet-17"
# aws_security_group = "default"
# aws_key_pair = "key-pair
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

