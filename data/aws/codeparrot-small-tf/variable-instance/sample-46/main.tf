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
variable "name_0" {
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1

variable "name_1" {
  type = "string"
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro

resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  instance_count  = var.name_1
  instance_type  = var.ec2_instance_type
  spot_price    = var.ec2_spot_price
  subnet_id     = var.ec2_subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name      = var.ec2_key_name
  tags          = var.ec2_tags

  root_block_device {
    volume_size = var.ec2_root_volume_size
    volume_type = var.ec2_root_volume_type
  }

  tags = var.ec2_tags

  root_block_device {
    volume_size = var.ec2_root_volume_size
    volume_type = var.ec2_root_volume_type
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdc"
    virtual_name = "ephemeral0"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdd"
    virtual_name = "ephemeral1"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sde"
    virtual_name = "ephemeral2"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdf"
    virtual_name = "ephemeral3"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sde"
    virtual_name = "ephemeral4"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdf"
    virtual_name = "ephemeral5"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sde"
    virtual_name = "ephemeral6"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdf"
    virtual_name = "ephemeral7"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sde"
    virtual_name = "ephemeral8"
  }

  # ephemeral device for EBS volume
  ephemeral_block_device {
    device_name  = "/dev/sdf"
    virtual_name = "ephemeral9"
}

