# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region = "us-east-1"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
# https://www.terraform.io/docs/providers/aws/r/instance.html
# https://www.terraform.io/docs/providers/aws/r/vpc.html

# terraform.io/docs/providers/aws/r/vpc.html
# https://www.terraform.io/docs/providers/aws/r/vpc.html

# terraform.io/docs/providers/aws/r/subnet.html
# https://www.terraform.io/docs/providers/aws/r/subnet.html

# terraform.io/docs/providers/aws/r/vpc.html
# https://www.terraform.io/docs/providers/aws/r/vpc.html

# terraform.io/docs/providers/aws/r/subnet.html
# https://www.terraform.io/docs/providers/aws/r/vpc.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options.html
# https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html
# https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_dhcp_options_association_association.html

# terraform.io/docs/providers/aws/r/vpc_
}

