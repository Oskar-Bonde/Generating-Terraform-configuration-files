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
# variable ec2_type_t2
variable "name_0" {
  type = "map"
  default = {
    us-east-1 = "ami-0915bcb5fa77e4892"
    us-west-2 = "ami-0ff8a91507f77f867"
    eu-west-1 = "ami-0ff8a91507f77f867"
    eu-central-1 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    eu-central-1 = "ami-0ff8a91507f77f867"
    ap-northeast-2 = "ami-0ff8a91507f77f867"
    sa-east-1 = "ami-0ff8a91507f77f867"
    us-east-1 = "ami-0ff8a91507f77f867"
    us-west-2 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
    us-west-2 = "ami-0ff8a91507f77f867"
  }
}

# variable called ec2_instance_count which is number type with default 1

}

# Create EC2 Instance with ami set to var.name_0, count as var.ec2_instance_count and instance type t3.micro

}

