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
# type = "string"
# default = "us-east-1"
# type = "map"
# default = {
#   us-east-1 = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_profile with default "default" and type string
# aws_profile = "default"
# type = "map"
# default = {
#   us-east-1 = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_type with default "t2.micro" and type string
# aws_type = "t2.micro"
# type = "map"
# default = {
#   t2.micro = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_ami_id with default "ami-0ff8a91507f77f867"
# aws_ami_id = "ami-0ff8a91507f77f867"
# type = "map"
# default = {
#   us-east-1 = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_instance_type with default "t2.micro" and type string
# aws_instance_type = "t2.micro"
# type = "map"
# default = {
#   t2.micro = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_ami_id with default "ami-0ff8a91507f77f867"
# aws_ami_id = "ami-0ff8a91507f77f867"
# type = "map"
# default = {
#   us-east-1 = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_instance_profile with default "default" and type string
# aws_instance_profile = "default"
# type = "map"
# default = {
#   us-east-1 = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_type with default "t2.micro" and type string
# aws_type = "t2.micro"
# type = "map"
# default = {
#   t2.micro = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_ami_id with default "ami-0ff8a91507f77f867"
# aws_ami_id = "ami-0ff8a91507f77f867"
# type = "map"
# default = {
#   t2.micro = "ami-0ff8a91507f77f867"
# }

# Create variable called aws_instance_profile with default "default" and type string
# aws_instance_profile = "default"
# type = "map"
# default = {
#   t2.micro = "ami-0ff8a91507f77f867"
# }

# Create variable called aws
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

