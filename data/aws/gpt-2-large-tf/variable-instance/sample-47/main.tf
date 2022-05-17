terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1" and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
# variable "ec2_ami_id"
# variable "ec2_ami_id_public"
# variable "ec2_ami_id_public_key"
# variable "ec2_ami_id_public_key_path"
# variable "ec2_ami_id_public_key_name"
# variable "ec2_ami_id_public_key_path"
# variable "ec2_ami_id_public_key_path_key"
# variable "ec2_ami_id_public_key_name_key"
# variable "ec2_ami_id_public_key_name_key_path"
# variable "ec2_ami_id_public_key_name_key_path_value"
# variable "ec2_ami_id_public_key_name_value"
# variable "ec2_ami_id_public_key_name_value_key"
# variable "ec2_ami_id_public_key_name_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value_value_value_value_value_value_value_value_value_value"
# variable "ec2_ami_id_public_key_name_value_value_value_value_value_value
}

# variable called ec2_instance_count which is number type with default 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro
}

