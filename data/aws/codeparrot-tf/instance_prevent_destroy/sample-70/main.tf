provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1,000GB is EBS-backed
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance ami-0915bcb5fa77e4892, instance type t2.micro and the lifecycle prevent destroy set true
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  key_name      = "devops-terraform"
  subnet_id     = "subnet-0915bcb5fa77e4892"
  security_groups = ["sg-51530134", "sg-b253d7cc"]
  associate_public_ip_address = true
  source_dest_check = false

  tags {
    Name = "terraform-ec2-demo"
  }
}
